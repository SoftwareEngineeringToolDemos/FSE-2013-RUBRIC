1) GETTING STARTED:

RUBRIC should be running when the machine is booted into standard mode. If not, RUBRIC can be started by clicking the icon in the top left corner of the screen.



Alternatively, the tool can be started from a terminal using the command below:

java -Dgate.plugins.home="/home/rubric/GATE_Developer_7.1/plugins/" -jar /home/rubric/RUBRIC/rubric.jar "/home/rubric/GATE_Developer_7.1"




2) CREATING FILES:

You can use the files from the original demo, RUBRIC_Doc and its library RUBRIC_Corpus, or you can create your own. The instructions below describe existing functionality in GATE that will create a set of files that can be used with the RUBRIC tool.



2.1) To create your own file, begin by creating a datastore where your files will be saved, scroll down to the bottom of the resources tree in the upper left section of the screen. Right-mouse-click on Datastores and select "Create Datastore". You will see a popup titled "Create a datastore" where you can use the default "Lucene Based Searchable DataStore". Click "OK". On the next popup create a new (empty) directory, then click "open". Use the defaults on the subsequent screen, and click "OK". Go back to the resources tree and under "Datastores" you should see your new datastore. 

2.2) Now you can create (and save) documents. Go to File->New Language Resource->GATE Document. You can use the default parameters for the new GATE document, but should give the document a Name on the subsequent popup then click "OK".
You can double-click on the new document open it in the main window. Here you can work on the document (e.g. writing and editing the requirements)
.
2.3) Before you save the document, you need to create a "Corpus" which is a collection of documents. RUBRIC is actually run against the entire corpus, rather than against a single file, and the files should be saved within the "Corpus" rather than individually. There are several ways to create the corpus. For the simplest way, right-mouse-click on the document tab in the main window and select "New Corpus with this Document". The corpus will be automatically created with a name similar to that of the document.
To save the files, right-mouse-click on the corpus file in the resource tree, then click "Save to Datastore". Select the datastore you created earlier and click "OK".




3) USING RUBRIC:

Once you have your file(s) saved to a corpus, you can run rubric on the corpus. 
3.1) Double-click RUBRIC_Pipeline under applications in the resource tree. 
3.2) The corpus you wish to validate can be selected via a dropdown in the middle of the screen labeled "Corpus". 
3.3) Once the correct corpus is selected, click "Run this Application" at the bottom of the screen.
3.4) 
Once the application is run, open a document from the corpus in the main window in the center of the screen to view the annotations on it. 

3.5) Select "Annotation Sets" and select the RUBRIC-created annotations you wish to view (e.g. Boilerplate_Conformant).




More information can be found in the original paper:
Arora, Chetan, et al. "RUBRIC: A flexible tool for automated checking of conformance to requirement boilerplates." Proceedings of the 2013 9th
Joint Meeting on Foundations of Software Engineering. ACM, 2013.

