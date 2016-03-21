# AlertController
A wrapper class for UIAlertController


### Background
You have a project whose development target is iOS 7.0. Due to some legacy modules you are not able to upgrade the development target to iOS 8.0 or later at the moment. You understand, however, UIAlertView & UIActionSheet are deprecated. You need a wrapper class to handle alerts for both iOS 7.0 and iOS 8.0 (or later) such that you can smoothly move development target to >iOS 8.0 in the future.

### Specifications
1. Class will be named '<b>AlertController</b>'

2. It has a class method with signature <b>+alertWithTitle:message:actionTitles:actions:alertStyle:inViewController:</b>, where 'actionTitles' & 'actions' take NSArray objects defining button titles and corresponding events, and 'alertStyle' takes UIAlertControllerStyle (this will also reflect to UIAlertView & UIActionSheet). You can also add more convenient methods for simple alert, <b>e.g.</b> 
	[AlertController simpleAlert:@"This is an alert"]
	will present an alert view with given message and single button titled 'OK'.

3. If there are more than one action buttons, the left most should always be cancellation with style <b>UIAlertActionStyleCancel</b>.

4. It will be able to handle UIAlertView & UIActionSheet in the same manner - i.e. without having to use UIAlertViewDelegate & UIActionSheetDelegate in its client. 

5. In this project, there are two classes: <b>ViewController</b> & <b>PopView</b>. The former is the root view controller whose has two buttons. The top button, 'Click Me', should prompt a message with your AlertController. The alert will contain at least two buttons: 'Cancel' & 'OK', each of which should log its title in <b>'debugLabel'</b> when pressed. The bottom button, 'Show secret', will present a view (PopView) on top of current view. In the PopView instance, there is a dismiss button which will again activate an alert view when pressed. This alert view has only one button that is to dismiss the PopView instance. The button title will also be logged in <b>ViewController</b>'s <b>debugLabel</b>.

6. <b>Bonus:</b> one can still bring up an alert view even without a reference to any view controller, i.e. the '<b>inViewController:</b>' parameter in its signature can be nil.
