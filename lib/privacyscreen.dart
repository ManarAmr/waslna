import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:url_launcher/url_launcher.dart';

class privacyscreen extends StatelessWidget {
  const privacyscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor:const Color.fromARGB(255, 254	,198	,40),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 6,),
            Image.asset('assets/bus5.jpeg',
              fit: BoxFit.cover,
              height: 50,),
            const SizedBox(width: 10,),
            const Text(
              "WASLNA",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'ZCOOL XiaoWei',
                  color: Colors.black
              ),
            ),
          ],
        ) ,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.privacy_tip_outlined),
                SizedBox(width: 10,),
                Text("Privacy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20.0,),
            const Text(
                'Team waslna built the Waslna app as a Free app.This SERVICE is provided by Team waslna at no cost and is intended for use as is.\n\n'
                'This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.\n\n'
                'If you choose to use my Service, then you agree to the collection and use of information in relation to this policy.'
                    'The Personal Information that I collect is used for providing and improving the Service. '
                    'I will not use or share your information with anyone except as described in this Privacy Policy.\n\n'
              'The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Waslna unless otherwise defined in this Privacy Policy.',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text("Information Collection and Use",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to nickname , ip address. The information that I request will be retained on your device and is not collected by me in any way.\n\n'
              'The app does use third-party services that may collect information used to identify you.',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0,),
            TextButton(
                onPressed: ()async{
              final url = 'https://www.google.com/policies/privacy/';
              if (await canLaunch(url)){
                await launch(url);
              }
            }, child: const Text(
              'Google',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.amber,
              ),
            )),
            RichText(
              textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.amber,
                  ),
                  text: 'Google Play Services',
                  recognizer: TapGestureRecognizer()..onTap = ()async{
                    var url = 'https://www.google.com/policies/privacy/';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else{
                      throw 'Cannot Load Url';
                    }
                  }
                ),
            ),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
              style: const TextStyle(
                color: Colors.amber,
                //leadingDistribution: TextLeadingDistribution.even,
              ),
              text: 'Facebook',
              recognizer: TapGestureRecognizer()..onTap = ()async{
                var url = Uri.https('facebook.com','/about/privacy/update/printable');
                var response = await http.post(url, body:{'name': 'Google Play Services', 'color': 'amber'});
                print('Response status: ${response.statusCode}');
                print('Response body : ${response.body}');
                print(await http.read(Uri.https('google.com', '/about/privacy/update/printable')));
                // if(await canLaunch(url)){
                //   await launch(url);
                // }else{
                //   throw 'Cannot Load Url';
                // }
              }
             ),
           ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text("Log Data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20.0,),
            const Text(
              ' I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text('Cookies',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device is internal memory.\n\n'

              'This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text('Service Provides',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'I may employ third-party companies and individuals due to the following reasons:\n\n'
              '* To facilitate our Service\n'
              '* To provide the Service on our behalf\n'
              '* To perform Service-related services or\n'
              '* To assist us in analyzing how our Service is used.\n\n'
              'I want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text("Security",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text("Links to Other Sites",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text("Children's Privacy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do the necessary actions.',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text("Changes to This Privacy Policy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.\n\n'

              'This policy is effective as of 2023-03-16',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }
}