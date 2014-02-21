//
//  ViewController.m
//  1kPic
//
//  Created by John Clem on 2/18/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIActionSheetDelegate>

@property (nonatomic, strong) NSString *aThousandWords;
@property (nonatomic, weak) IBOutlet UILabel *thousandWordsLabel, *wordsWorthLabel, *pictureWorthLabel;
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.aThousandWords = @"Praesent non netus sed sociis magnis vehicula eros felis hac. Mattis metus conubia sodales sapien, torquent congue, luctus tortor laoreet porttitor eu aliquam ut, velit mattis ante, diam. Interdum conubia vestibulum per dui Primis nulla aliquam nonummy ligula porta venenatis. Ultricies felis metus hymenaeos ridiculus vulputate montes pede sed. Nisl. Justo Non. Parturient consectetuer cursus. Semper sodales felis eu vitae dui nibh velit tempor lectus leo urna, sed vulputate iaculis taciti egestas felis ornare ante erat hac nisi ultrices tortor justo, pede curabitur tempus luctus parturient lobortis habitasse. Lectus nec sem rutrum mattis eros fusce molestie tellus viverra. Suscipit nam pulvinar. Dictum congue tempus velit odio primis metus mattis tempor conubia. Tincidunt ut aenean molestie non lacus. Fringilla pulvinar nullam ornare dolor nam ad felis elementum etiam orci turpis tempus interdum laoreet ultricies nam semper semper lobortis laoreet proin proin aptent curae; odio gravida nec dictum tempus pellentesque tellus posuere dis. Vel sociosqu morbi. Nisi arcu in convallis sociis augue arcu amet elit mollis feugiat dolor tincidunt ridiculus nisl. Suscipit nibh. Curabitur neque fames molestie sapien placerat vel. Eu sollicitudin ut aliquam commodo mauris magnis commodo maecenas a sem bibendum dolor. Volutpat sed vel aliquam morbi. Commodo. Odio vestibulum hac. Lacus imperdiet. Diam maecenas ut massa fermentum quam velit nostra laoreet conubia netus. Libero nostra justo amet. Congue odio dictum lacinia libero praesent dis magna sed. Volutpat nisi, mi egestas cras vivamus, sollicitudin ac id turpis ligula cubilia duis feugiat non cum pede. Sociis senectus leo. Fames nibh in Hymenaeos magnis quis dictumst. Mi montes ac malesuada dictum. Id class imperdiet donec felis eu sagittis sit sollicitudin felis ornare, curae; morbi. Eleifend per etiam. Porta penatibus cum mi nisi cursus dolor. Amet rhoncus congue et adipiscing vehicula consectetuer metus parturient lacinia natoque id euismod inceptos pharetra. Blandit in hendrerit sapien amet quisque purus cum. Id tempus eleifend. Euismod sed donec mauris porta quam donec accumsan. Etiam sodales elementum. Dolor vitae potenti hendrerit luctus natoque morbi dignissim suscipit fames posuere lobortis proin accumsan lobortis felis, felis sem habitant tempor libero est eros mollis montes. Sociis suscipit convallis sociosqu non mauris ligula rutrum tellus mi. Ipsum Auctor hendrerit. Sem conubia rhoncus, cras. Fames conubia ad vitae mauris a semper sodales nunc. Tincidunt sociosqu volutpat tempor mattis pretium auctor imperdiet metus maecenas. Ornare fringilla primis pulvinar sem aliquam sed pretium sociosqu lacus non quisque hendrerit condimentum fames posuere hymenaeos aliquam, lacinia tempor. Amet blandit aptent lectus placerat lectus. Litora fermentum sapien erat pretium nisi. Cursus pellentesque natoque pede id nisl senectus nisi magnis erat Mi aliquam, sed est vehicula Laoreet volutpat lobortis. Tempor pharetra nec eros dolor a arcu nec natoque nunc commodo tellus quis metus morbi ridiculus proin vel elementum ullamcorper in posuere adipiscing litora maecenas sem. Curabitur lacus dictumst at laoreet maecenas et per gravida metus. Mi nam sodales imperdiet venenatis elit eget consequat, morbi congue urna in a est morbi per convallis ullamcorper, cubilia adipiscing vel hymenaeos. Proin sapien. Faucibus quis sem phasellus nam. Ut nam ipsum justo mollis nunc leo. Integer vitae commodo non, malesuada curae;, nam vehicula est, dui maecenas cubilia vehicula proin maecenas metus posuere varius eleifend praesent cras nunc gravida elementum quisque Dignissim faucibus ultrices posuere amet egestas massa mus scelerisque fusce non Phasellus. Laoreet donec ante venenatis sociosqu primis habitant posuere aliquet. Quisque sapien nam ultricies ridiculus. Egestas class mus. Sed justo, nisi justo odio egestas leo euismod, donec penatibus Quam luctus dignissim suscipit mi laoreet nostra quam Nostra curae;, enim. Etiam ridiculus nulla et. Mollis ut nunc curae; orci vivamus Mattis accumsan ipsum mauris ad dolor pharetra mi pharetra rutrum tincidunt malesuada sem elementum taciti lacinia Ultricies dignissim pulvinar a malesuada sagittis lobortis felis amet. Mus aptent. Varius. Viverra metus laoreet netus. Viverra. Sed tempus potenti lobortis. Suspendisse Elit. Cum duis. Tellus velit. Duis, faucibus nunc sollicitudin eleifend eu sed penatibus rutrum. Maecenas urna molestie. Porta etiam nibh Hac. Nostra sodales, dictumst magna id A sed egestas lobortis. Class potenti eleifend commodo aliquet fusce, hymenaeos dapibus eu ornare suspendisse ornare. Facilisis elementum orci a pellentesque nec et enim Ullamcorper Aliquam. A facilisi auctor erat hac nullam vel porta mollis volutpat enim. Vehicula placerat amet molestie. Velit sem varius consectetuer habitant sollicitudin. Duis porttitor pellentesque. Fermentum dui tellus nostra nascetur pretium praesent pellentesque rutrum lacinia tortor accumsan aliquet hendrerit bibendum eleifend dis facilisis ullamcorper condimentum fermentum hac dignissim. Varius netus. At eleifend fermentum dolor viverra consectetuer sociosqu non lacinia sapien vestibulum. Maecenas metus hymenaeos platea. Hac ornare id, massa, hac. Torquent malesuada parturient eleifend Torquent fermentum fringilla amet molestie phasellus convallis sed arcu taciti. Aliquet mus conubia habitant eu penatibus, arcu eget sodales facilisi fames lectus duis adipiscing turpis purus bibendum at tellus purus congue primis dictum class. Pharetra senectus etiam quis purus dignissim nam cum montes non ante ridiculus augue facilisis. Amet ornare fringilla facilisi ultricies duis mollis velit. Integer ridiculus. Dolor primis, augue penatibus nascetur quisque porta mollis dictumst phasellus quam habitant integer risus amet nunc molestie aliquam nullam rutrum faucibus elementum nunc faucibus habitasse, nonummy pellentesque dictum luctus proin quisque pede suspendisse lorem nec molestie lacinia consequat neque erat id bibendum hymenaeos nullam lobortis facilisi hac varius diam inceptos amet. Leo penatibus, taciti gravida elementum. Mollis, mus congue dignissim, suscipit etiam accumsan aptent ultrices curae; sit tellus lectus, pulvinar velit elit cubilia et metus urna natoque fusce. Sit pede elit pharetra. Pharetra quisque odio condimentum morbi non congue sodales elit sapien, netus faucibus habitasse dapibus dis fringilla. Rhoncus inceptos ultrices amet turpis. Vitae porttitor tristique quam praesent tellus pretium. Pretium, quam magnis lacinia tristique Donec neque varius luctus augue, accumsan eget est. Potenti nulla. Donec. Laoreet nisl. Sed tortor, aliquam magna eleifend et donec tristique quam urna erat. Eget arcu nostra sem maecenas ridiculus. Sociosqu metus hendrerit quis est taciti cum sem gravida vel tempor adipiscing tempus condimentum congue pulvinar pede risus malesuada aptent, ut nibh eros lorem felis nulla sapien. Lobortis faucibus placerat erat eros nibh magnis mi Fringilla pellentesque nascetur habitant dapibus. Semper feugiat. Fermentum dictum adipiscing velit. Suspendisse nascetur.";
}

#pragma mark - Image Capture

- (void)showPickerWithSourceType:(UIImagePickerControllerSourceType)sourceType
{
    // create a new instance of UIImagePickerController
    UIImagePickerController *picker = [UIImagePickerController new];
    // set this ViewController as the delegate of the picker
    picker.delegate = self;
    // we want a square image returned, so the picker should allow editing
    picker.allowsEditing = YES;
    // set the source type of the picker
    picker.sourceType = sourceType;
    // show the picker
    [self presentViewController:picker
                       animated:YES
                     completion:^{
                         NSLog(@"Picker was presented");
                     }];
}

- (IBAction)getNewImage:(id)sender
{
    // present an action sheet to ask the user if they want camera or photo library
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"Photo Library", @"Camera", nil];

    [actionSheet showFromBarButtonItem:sender animated:YES];
}

- (void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    /*
     We need to create and preset an image picker with the selected source type, so by
     looking at what a UIImagePickerControllerSourceType actually is, we see it's an enum
     where Photo Library = 0 and Camera = 1, just like our buttons on the action sheet
     
     enum {
     UIImagePickerControllerSourceTypePhotoLibrary = 0,
     UIImagePickerControllerSourceTypeCamera = 1,
     UIImagePickerControllerSourceTypeSavedPhotosAlbum = 2
     };
    */
    
    if (buttonIndex == UIImagePickerControllerSourceTypePhotoLibrary) {
        
        [self showPickerWithSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    
    } else if (buttonIndex == UIImagePickerControllerSourceTypeCamera) {
        
        [self showPickerWithSourceType:UIImagePickerControllerSourceTypeCamera];
    
    } else {
        
        NSLog(@"User dismissed action sheet with Cancel button");
        
    }
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    // the user tapped cancel or didn't allow photo library access
    NSLog(@"Picker Did Cancel");
    // we've implemented the optional method, so we must dismiss it manually
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    // we've implemented the optional method, so we must dismiss it manually
    [self dismissViewControllerAnimated:YES completion:^{
        
        // get a pointer to the edited image
        UIImage *editedImage = [info objectForKey:UIImagePickerControllerEditedImage];
        // set the image property of our UIImageView IBOutlet
        self.imageView.image = editedImage;
        // set the content mode so that the image isn't stretched or distorted
        self.imageView.contentMode = UIViewContentModeScaleAspectFill;
        // check if the picture is not worth 1,000 words
        [self isPicture:editedImage isWorthAThousandWords:_aThousandWords];
    }];
    
}

#pragma mark - Picture / 1,000 words equality comparison methods

- (CGFloat)getBytesForPicture:(UIImage *)picture
{
    // convert the image into data
    NSData *pictureData = UIImageJPEGRepresentation(picture, 0.0);
    return pictureData.length;
}

- (CGFloat)getBytesForWords:(NSString *)words
{
    // convert the string into binary data
    NSData *wordsData = [words dataUsingEncoding:NSUTF8StringEncoding];
    return wordsData.length;
}

- (void)isPicture:(UIImage *)picture isWorthAThousandWords:(NSString *)words
{
    CGFloat pictureLength = [self getBytesForPicture:picture];
    CGFloat wordsLength = [self getBytesForWords:words];
    
    _pictureWorthLabel.text = [NSString stringWithFormat:@"Picture's Worth: %.1f bytes", pictureLength];
    _wordsWorthLabel.text = [NSString stringWithFormat:@"Words' Worth: %.1f bytes", wordsLength];
    
    NSString *resultsString;
    
    if (pictureLength == wordsLength) {
        resultsString = @"It IS worth 1,000 words!";
    } else if (pictureLength / wordsLength < 2) {
        resultsString = [NSString stringWithFormat:@"a picture is worth \n ~%.1f thousand words", pictureLength / wordsLength];
    } else if (pictureLength / wordsLength < 2) {
        resultsString = [NSString stringWithFormat:@"a picture is worth \n ~%.1f thousand words", pictureLength / wordsLength];
    }
    
    NSLog(@"%@", resultsString);
    _thousandWordsLabel.text = resultsString;
}

@end
