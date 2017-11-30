<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

		require '../core/db.php';

		
		$sorteos = $db->query("SELECT * FROM sorteos WHERE id NOT IN (SELECT id_sorteo FROM resultados WHERE fecha = CURDATE()) AND estatus = 1")->fetchAll();
		echo json_encode($sorteos);

	}

	public function saveData() {
		
		$client = new socketHttp();

        require '../core/db.php';

        
        $anular = $db->insert("resultados", ["#fecha" => "NOW()", ""]);
    
        $respuesta[] = ["codigoRespuesta" => "ok"];
        
                }

            } else {

                $respuesta[] = ["codigoRespuesta" => "ticket-anulado"];

            }

        } else {

            $respuesta[] = ["codigoRespuesta" => "ticket-no-existe"];

        }
        
        echo json_encode($respuesta);

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}

/*
public class f_sorteos {
    
    private final f_taquilla taquilla = new f_taquilla();
    private final int horaCierre = 40;
    public void getSorteos(JTable jTableSorteos) {
        Timer timer;
        timer = new Timer();
        
        TimerTask task = new TimerTask() {
            @Override
            public void run()
            {
                try {
                    Calendar calendario = Calendar.getInstance();
                    int minutos = calendario.get(Calendar.MINUTE);
                    if ( minutos >= horaCierre && taquilla.sorteosVerificados == false ) {
                        taquilla.sorteosVerificados = true;
                        refrescaSorteos(jTableSorteos);
                    } else {
                        taquilla.sorteosVerificados = false;
                    }
                } catch (ParseException ex) {
                    Logger.getLogger(f_sorteos.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IOException ex) {
                    Logger.getLogger(f_sorteos.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        };
        // Empezamos dentro de 1ms y luego lanzamos la tarea cada 1000ms o 10Seg
        timer.schedule(task, 1, 3600000);
    }
    
    public void refrescaSorteos(JTable jTableSorteos) throws IOException, ParseException {
        DefaultTableModel modelo = (DefaultTableModel) jTableSorteos.getModel();
        int rowCount = modelo.getRowCount();
        for (int i = rowCount-1; i>=0;i--){
            modelo.removeRow(i);
        }
        
        CloseableHttpClient client = HttpClientBuilder.create().build();
        HttpGet get = new HttpGet("http://localhost/animalitos/apis/sorteos");
        get.addHeader("accept", "application/json");
        HttpResponse response = client.execute(get);
        String json = EntityUtils.toString(response.getEntity(), "UTF-8");

        JSONParser parser = new JSONParser();
        Object resultObject = parser.parse(json);
        
        DefaultTableModel temporalModel = (DefaultTableModel) jTableSorteos.getModel();
        if (resultObject instanceof JSONArray) {
            JSONArray array=(JSONArray)resultObject;
            for (Iterator it = array.iterator(); it.hasNext();) {
                Object object = it.next();
                JSONObject obj =(JSONObject)object;
                Object sorteos[]= { false, obj.get("id"), obj.get("sorteo")};
                temporalModel.addRow(sorteos);
            }
        }
    }
    
    public String nombreSorteos(int id_sorteo) {
        Map<Integer, String> nombreSorteo = new HashMap<>();
        nombreSorteo.put(1, "@LottoActivo 10");
        nombreSorteo.put(2, "@LottoActivo 11");
        nombreSorteo.put(3, "@LottoActivo 12");
        nombreSorteo.put(4, "@LottoActivo 1");
        nombreSorteo.put(5, "@LottoActivo 4");
        nombreSorteo.put(6, "@LottoActivo 5");
        nombreSorteo.put(7, "@LottoActivo 6");
        nombreSorteo.put(8, "@LottoActivo 7");
        return nombreSorteo.get(id_sorteo);
    }
    
}*/