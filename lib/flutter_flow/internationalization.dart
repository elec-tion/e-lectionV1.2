import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'tr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? trText = '',
  }) =>
      [enText, trText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Giris
  {
    'brgacwce': {
      'en': 'e-lection',
      'tr': 'e-lection',
    },
    '72y6svrw': {
      'en': 'v1.0.2 ios h5',
      'tr': 'v1.0.2 stable',
    },
    '2nusyfli': {
      'en': 'Log In',
      'tr': 'Oturum Aç',
    },
    'n2ze8z0l': {
      'en': 'Good Morning!',
      'tr': 'Günaydın!',
    },
    'zlj8c3rp': {
      'en': 'Good Afternoon!',
      'tr': 'İyi Günler!',
    },
    'b4ik7q6k': {
      'en': 'Good Evening!',
      'tr': 'İyi Akşamlar!',
    },
    'cbuxled7': {
      'en': 'Identity Number',
      'tr': 'TC Kimlik Numarası',
    },
    '4b87hfic': {
      'en': 'Password',
      'tr': 'Şifre',
    },
    'y12ln0n7': {
      'en': 'I forgot my password',
      'tr': 'Şifremi Unuttum',
    },
    'dcj75pxu': {
      'en': 'Sign In',
      'tr': 'Giriş Yap',
    },
    'v2mstnnd': {
      'en': 'Sign Up',
      'tr': 'Kayıt Ol',
    },
    '5cro34sf': {
      'en': 'Create Account',
      'tr': 'Hesap Oluştur',
    },
    'je7cbpbi': {
      'en': 'Identity Number',
      'tr': 'TC Kimlik Numarası',
    },
    '5p62g4xw': {
      'en': 'Password',
      'tr': 'Şifre',
    },
    'qpve8irz': {
      'en': 'Get Started',
      'tr': 'Başlayın',
    },
    'c92ue8pz': {
      'en': 'Dark Mode',
      'tr': 'Karanlık Modu',
    },
    '8jb8ioav': {
      'en': 'Language',
      'tr': 'Dil',
    },
    'mi0kawd5': {
      'en': 'Home',
      'tr': 'Anasayfa',
    },
  },
  // Anasayfa
  {
    'bje0sith': {
      'en': 'Good Morning!',
      'tr': 'Günaydın,',
    },
    'tb7gmjl5': {
      'en': 'Good Afternoon!',
      'tr': 'İyi Günler,',
    },
    '7ck4ukmf': {
      'en': 'Good Evening!',
      'tr': 'İyi Akşamlar,',
    },
    'db31qvx9': {
      'en': 'Give Vote',
      'tr': 'Oy Ver',
    },
    'dkelff23': {
      'en': 'Voting Panel',
      'tr': 'Oy Paneli',
    },
    'lg3tjorb': {
      'en': 'Elections',
      'tr': 'Seçimler',
    },
    'vvnh84kz': {
      'en': 'My Profile',
      'tr': 'Profilim',
    },
    'glexyjvl': {
      'en': 'Settings',
      'tr': 'Ayarlar',
    },
    '39e93srh': {
      'en': 'Create Election',
      'tr': 'Oylama Yarat',
    },
    'clym15pi': {
      'en': 'Home',
      'tr': 'Anasayfa',
    },
  },
  // Menu
  {
    'koblx19e': {
      'en': 'Menu',
      'tr': 'Menü',
    },
    'q8id48zf': {
      'en': 'Voting Operations',
      'tr': 'Oy İşlemleri',
    },
    'hva6rfxg': {
      'en': 'Give Vote',
      'tr': 'Oy Ver',
    },
    'u8q9qj4w': {
      'en': 'Voting Panel',
      'tr': 'Oy Paneli',
    },
    'luvwlumo': {
      'en': 'Create Voting',
      'tr': 'Oylama Yarat',
    },
    'rf986fqe': {
      'en': 'Elections',
      'tr': 'Seçimler',
    },
    'x27sebtl': {
      'en': 'My Profile',
      'tr': 'Profilim',
    },
    '4nedjskb': {
      'en': 'v1.0.2 ios stable ',
      'tr': 'v1.0.2 stable',
    },
    '39bjex55': {
      'en': 'Log out from my e-lection account',
      'tr': 'e-lection hesabımdan çıkış yap',
    },
    'rcwzcytv': {
      'en': 'Settings',
      'tr': 'Ayarlar',
    },
    '0h0880ti': {
      'en': 'Help Desk',
      'tr': 'Yardım Masası',
    },
    'nbz09vwb': {
      'en': 'Give feedback about the app',
      'tr': 'Uygulama hakkında geri bildirim verin',
    },
    'xrg92gon': {
      'en': '© 2024, e-lection. Electronic voting solutions.',
      'tr': '© 2024, e-lection. Elektronik oylama çözümleri.',
    },
    'yvc20tl3': {
      'en': 'Menu',
      'tr': 'Menü',
    },
  },
  // OyIslemleri
  {
    'iycr3ggx': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
    'yzcu55zv': {
      'en': 'Give Vote',
      'tr': 'Oy Ver',
    },
    'zoe9j1c7': {
      'en': ' Voting Panel',
      'tr': 'Oylama Paneli',
    },
    'k17eihfq': {
      'en': 'Create \nElection',
      'tr': 'Oylama\n Oluştur',
    },
    'jnfa6i4g': {
      'en': 'Elections',
      'tr': 'Seçimler',
    },
    '2lf6sx3o': {
      'en': 'Help Center',
      'tr': 'Yardım Merkezi',
    },
    'u8xt6qab': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'mz8gh5gy': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // Ayarlar
  {
    '5di3rakl': {
      'en': 'Settings',
      'tr': 'Ayarlar',
    },
    'yw4uux9z': {
      'en': 'Application Settings',
      'tr': 'Uygulama Ayarları',
    },
    'q4orypgp': {
      'en': 'Dark Mode',
      'tr': 'Karanlık Modu',
    },
    'ud5exg4j': {
      'en': 'Language',
      'tr': 'Dil',
    },
    'flxteqcf': {
      'en': 'v1.0.2 stable',
      'tr': 'v1.0.2 stable',
    },
    'cluweqi1': {
      'en': 'Give feedback about the app',
      'tr': 'Uygulama hakkında geri bildirim verin',
    },
    'nk920zn2': {
      'en': 'e-lection Terms of Use and User Consent',
      'tr': 'e-lection Kullanım Şartları ve Kullanıcı Rıza Onayı',
    },
    'sz3jo2l9': {
      'en': '© 2024, e-lection. Electronic voting solutions.',
      'tr': '© 2024, e-lection. Elektronik oylama çözümleri.',
    },
    'kuj44xdw': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // Profilim
  {
    'll46xb1d': {
      'en': 'My Profile',
      'tr': 'Profilim',
    },
    'xxejesxf': {
      'en': 'To change your profile photo, \nclick to the photo.',
      'tr': 'Profil fotoğrafını değiştirmek için,\nfotoğrafa tıkla.',
    },
    'lafnta0x': {
      'en': 'Change my password',
      'tr': 'Şifremi Değiştir',
    },
    '93ioi3v7': {
      'en': 'About me',
      'tr': 'Hakkımda',
    },
    'nxrl5ghc': {
      'en': 'Give feedback about the app',
      'tr': 'Uygulama hakkında geri bildirim verin',
    },
    's0jv7808': {
      'en': 'e-lection Terms of Use and User Consent',
      'tr': 'e-lection Kullanım Şartları ve Kullanıcı Rıza Onayı',
    },
    'gupunmp2': {
      'en': '© 2024, e-lection. Electronic voting solutions.',
      'tr': '© 2024, e-lection. Elektronik oylama çözümleri.',
    },
    'g6wocllx': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // BilgiGuncellemeP1
  {
    'pzuhuwkg': {
      'en': 'Update Your Profile',
      'tr': 'Profilini Güncelle',
    },
    'hfphpy8f': {
      'en': 'Please enter the informations about yourself.',
      'tr': 'Lütfen sizinle alakalı bilgileri giriniz.',
    },
    'mvtv24xs': {
      'en': 'Name',
      'tr': 'İsim',
    },
    'pasv0bma': {
      'en': 'Surname',
      'tr': 'Soyad',
    },
    'ceq848e8': {
      'en': 'E-mail',
      'tr': 'E-mail',
    },
    'phtu4thk': {
      'en': 'Phone Number',
      'tr': 'Telefon Numarası',
    },
    '44giohjb': {
      'en': 'Next',
      'tr': 'İleri',
    },
    'xnhpy0o9': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // SifremiUnuttumP4
  {
    '8ls9q6me': {
      'en': 'I forgot my password',
      'tr': 'Şifremi Unuttum',
    },
    's0rs4s1w': {
      'en': 'Your password has been changed.',
      'tr': 'Şifreniz değiştirildi.',
    },
    'cc7fkj1e': {
      'en': 'Go to Login',
      'tr': 'Giriş\'e Git',
    },
    '5977rwac': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyVer
  {
    'xmnem0hp': {
      'en': 'Give Vote',
      'tr': 'Oylama',
    },
    'uqyci65q': {
      'en': 'My Last Started Custom Election',
      'tr': 'En Son Başlamış Özel Seçimim',
    },
    'xr6of2eg': {
      'en': 'End Date and Time:',
      'tr': 'Bitiş Tarihi ve Saati:',
    },
    'jlkbykxd': {
      'en': 'My Last Started Regional Election',
      'tr': 'En Son Başlamış Özel Seçimim',
    },
    'c8l6y5o8': {
      'en': 'End Date and Time:',
      'tr': 'Bitiş Tarihi ve Saati:',
    },
    'nmfy3l1z': {
      'en': 'My All Elections',
      'tr': 'Bütün Oylamalarım',
    },
    '5051mwv7': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'czc6v08h': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP2devam
  {
    'kw175l4h': {
      'en': 'Warnings',
      'tr': 'Uyarılar',
    },
    'r7ax5qq0': {
      'en': 'Please read the following \nwarnings carefully before voting.',
      'tr':
          'Oy kullanma işleminden önce\n aşağıdaki uyarıları dikkatlice\n okuyunuz.',
    },
    '72ivzzgj': {
      'en': 'Election Committee',
      'tr': 'Seçim Sorumlusu',
    },
    'ca8vhzio': {
      'en':
          'All voters must carefully read \nand acknowledge the following \nwarnings.\n\n1. DO NOT exceed voting time limit \n   (if exists) or your vote may invalidated \n   by your committee.\n\n2. e-lection is not responsible for any \n   problems that may occur in the \n   voting process and/or results.\n\n3. No changes can be made about \n    the voting after the voting process.\n\n 4. By clicking \"Next\" you \n      Accept the e-lection\n      Terms of Use and User Consent form.',
      'tr':
          'Bütün seçmenler aşağıdaki\n uyarıları dikkatlice okuyup onaylamalıdır.\n\n1. Oylama İşlemlerinde ve/veya\n sonuçlarında yaşanabilecek\n aksaklıklardan e-lection \nsorumlu değildir.\n\n2. Oy kullanma işlemi \nsonrasında oylama hakkında \ndeğişiklik yapılamaz.\n\n3. İleri tuşuna bastığınız zaman\ne-lection Kullanım Şartlarını onaylamış\nolursunuz.',
    },
    '98d1vdjn': {
      'en':
          'I confirm that I have carefully \nread and understood the warnings',
      'tr': 'Uyarıları dikkatlice okuduğumu ve \nanladığımı onaylıyorum',
    },
    '6v1no6fz': {
      'en': 'View Terms of Use and User Consent Form',
      'tr': '   Kullanım Koşulları ve Rıza Onayını Görüntüle',
    },
    '1c77iiss': {
      'en': 'Continue',
      'tr': ' İlerle',
    },
    'dh9ibcj6': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP3devam
  {
    '7exdsjni': {
      'en': 'Attention',
      'tr': 'Dikkat',
    },
    'nevybw4m': {
      'en':
          'If you proceed to the next page,\n you will reach the \nvoting ballot screen.\n\nWhen you reach the voting screen,\n if you exit the screen in any way,\n your vote will be invalidated.',
      'tr':
          'Bir sonraki sayfaya ilerlediğinizde\n oy kullanma ekranına \nulaşacaksınız.\n\nOy kullanma ekranına \nulaştığınızda herhangi bir \nşekilde ekrandan çıkış yapılması\ndurumunda oyunuz geçersiz sayılacaktır.',
    },
    'rknpp0py': {
      'en':
          'If you believe you have reached this screen  by mistake, \nplease go back.',
      'tr':
          'Bu ekrana yanlışlıkla \ngeldiğinizi düşünüyorsanız, \nlütfen geri dönünüz.',
    },
    'ujl1at17': {
      'en': 'Back',
      'tr': 'Geri',
    },
    'obybjewx': {
      'en': 'Next',
      'tr': 'İlerle',
    },
    'fm9xh195': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyPaneli
  {
    's6p9x86g': {
      'en': 'Voting Panel',
      'tr': 'Oy Paneli',
    },
    'kmszbpwf': {
      'en': 'Elections that I am responsible',
      'tr': 'Sorumlu olduğum oylamalar',
    },
    '4xrr3hrk': {
      'en':
          'This page shows the elections which is not started and that you are assigned as election committee member.',
      'tr':
          'Bu sayfada seçim sorumlusu olarak görevlendirildiğiniz başlamamış seçimler gösterilmektedir.',
    },
    'rmbbqwhr': {
      'en': 'Create a Voting',
      'tr': 'Oylama Oluştur',
    },
    'eob91oiq': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OylamaOlusturP1
  {
    'i2ipkh6t': {
      'en': 'Create Election',
      'tr': 'Oylama Oluştur',
    },
    'y2xdigcu': {
      'en': 'Warnings',
      'tr': 'Uyarılar',
    },
    'zi7pwc2v': {
      'en':
          'Please read the following warnings carefully before creating a vote.',
      'tr':
          'Oylama oluşturma işleminden önce lütfen aşağıdaki uyarıları dikkatlice okuyunuz.',
    },
    '2vrbsivp': {
      'en':
          '1. Please note that you will need to obtain permission from the competent authorities for the new ballot you are creating, if required.',
      'tr':
          '1. Oluşturduğunuz yeni oylama için eğer gerekiyorsa yetkili birimlerden izin almanız gerektiğini lütfen unutmayınız.',
    },
    '7kkm5qyh': {
      'en':
          '2. e-lection is not responsible for any disruptions in the voting process and/or results.',
      'tr':
          '2. Oylama işlemlerinde ve/veya sonuçlarında yaşanabilecek aksaklıklardan e-lection sorumlu değildir.',
    },
    'lltxwzj2': {
      'en':
          '3. Changes can be made about the ballot after the ballot creation process.',
      'tr':
          '3. Oylama oluşturma işlemi sonrasında oylama hakkında değişiklik yapılabilir.',
    },
    'th6zdtcu': {
      'en': 'I confirm that I have carefully read and understood the warnings.',
      'tr': 'Uyarıları dikkatlice okuduğumu ve anladığımı onaylıyorum.',
    },
    '8jpm88tb': {
      'en': 'View Terms of Use and User Consent Form',
      'tr': '   Kullanım Koşulları ve Rıza Onayını Görüntüle',
    },
    'nx0lhw8r': {
      'en': 'Continue',
      'tr': 'İlerle',
    },
    'g3c4bktj': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OylamaOlusturP2
  {
    'mjzwsd6n': {
      'en': 'Create Election',
      'tr': 'Oylama Yarat',
    },
    '8ha5n1i1': {
      'en': 'Name of the Election',
      'tr': 'Oylama İsmi',
    },
    '25zr7ttg': {
      'en': '',
      'tr': 'TC Kimlik Numarası',
    },
    '1h0e2ru9': {
      'en': 'Details of the Election',
      'tr': 'Oylama Detayı',
    },
    'c1i5wqi0': {
      'en': '',
      'tr': 'TC Kimlik Numarası',
    },
    'le8zrklv': {
      'en': 'Voting Start Date & Time',
      'tr': 'Oylama Başlangıç Tarihi & Saati',
    },
    'qafjoj7a': {
      'en': 'Voting Start Date & Time:',
      'tr': 'Oylama Başlangıç Tarihi & Saati',
    },
    'tzk87p71': {
      'en': 'Voting End Date & Time',
      'tr': 'Oylama Bitiş Tarihi & Saati',
    },
    'cvr4lnxh': {
      'en': 'Voting End Date & Time:',
      'tr': 'Oylama Bitiş Tarihi & Saati',
    },
    '7ry5b9hx': {
      'en': 'Continue',
      'tr': 'İlerle',
    },
    'fa71vzzy': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OylamaOlusturP5
  {
    'wbg0y9zb': {
      'en': 'Create Election',
      'tr': 'Oylama Oluştur',
    },
    '95ocyemn': {
      'en': 'Election Created',
      'tr': 'Oylama Oluşturuldu',
    },
    'dptl2nld': {
      'en': 'Congratulations!',
      'tr': 'Tebrikler!',
    },
    '3ns6n7l2': {
      'en':
          'Your election has been successfully created.\nYou can use the Voting Panel to manage your vote and invite voters.',
      'tr':
          'Oylamanız başarıyla oluşturuldu.\nOylamanızı yönetmek ve seçmen davet etmek için Oy Paneli ekranını kullanabilirsiniz.',
    },
    'wullhp0r': {
      'en': 'Go to Homepage',
      'tr': 'Anasayfa\'ya Git',
    },
    'dyjqgjir': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // Secimler
  {
    '7axse6lo': {
      'en': 'Elections',
      'tr': 'Seçimler',
    },
    's692ylzb': {
      'en': 'Voting Panel',
      'tr': 'Oylama Paneli',
    },
    'oyuux3d8': {
      'en': 'Create Election',
      'tr': 'Oylama Oluştur',
    },
    '4p614ajp': {
      'en': 'Not Started',
      'tr': 'Başlamamış',
    },
    '2cl0z1ud': {
      'en': 'Start date & time:',
      'tr': 'Başlangıç tarihi ve saati:',
    },
    '4jer33wn': {
      'en': 'Start date & time:',
      'tr': 'Başlangıç tarihi ve saati:',
    },
    'awyirs0x': {
      'en': 'Start date & time:',
      'tr': 'Başlangıç tarihi ve saati:',
    },
    '7v7ltn0x': {
      'en': 'Start date & time:',
      'tr': 'Başlangıç tarihi ve saati:',
    },
    '3sp00u7z': {
      'en': 'Start date & time:',
      'tr': 'Başlangıç tarihi ve saati:',
    },
    'grxn9zuw': {
      'en': 'Started',
      'tr': 'Başlamış',
    },
    'taolk35m': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    '4zc8unmi': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    '75525nq1': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    '67i8dpp0': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    '02dxfg6z': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    '4cuqay50': {
      'en': 'Finished',
      'tr': 'Bitmiş',
    },
    '5gw230b9': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    'izbdgjc3': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    '73ek3p3t': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    'pirgo0te': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    's0zhuhyi': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    'qqlco1wr': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP4Pusula
  {
    'jy9q6vu5': {
      'en': 'Time left:',
      'tr': 'Kalan Süre:',
    },
    'rf3eqp4w': {
      'en': 'Electronic Voting Ballot',
      'tr': 'Elektronik Oy Pusulası',
    },
    'ctalpgz9': {
      'en': 'Option 1',
      'tr': '',
    },
    'kkwl5bk3': {
      'en': 'This voting ballot is provided by e-lection.\n-End Of Ballot-\n',
      'tr':
          'Bu oy pusulası e-lection tarafından sağlanmaktadır.\n-Oy Pusulasının Sonu-',
    },
    '95m2r08k': {
      'en': 'Review Vote    ',
      'tr': 'Oyu İncele    ',
    },
    'z03xgff0': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP5Pusula
  {
    'hc0zqdoy': {
      'en': 'Voter Information',
      'tr': 'Oy Kullanan Bilgileri',
    },
    'lkfx1s5k': {
      'en': 'Contact E-mail',
      'tr': 'e-mail',
    },
    '5rx9hshl': {
      'en': 'Contact Phone',
      'tr': 'Telefon numarası',
    },
    'nojbqh5c': {
      'en': 'My Wallet id',
      'tr': 'Cüzdan adresim',
    },
    '4vk0vjpg': {
      'en': 'The Candidate You Are Voting For',
      'tr': 'Oy Verdiğiniz Aday',
    },
    'xygeoi02': {
      'en':
          'I confirm this information and confirm\n that my vote may be\n invalidated in case of incorrect information.',
      'tr':
          'Yukarıdaki bilgilerin doğruluğunu onaylayıp, yanlış bir bilgi olması durumunda oyumun geçersiz sayılabileceğini onaylıyorum.',
    },
    '1ha2hpse': {
      'en': 'Back',
      'tr': 'Geri',
    },
    'lxs8hq5i': {
      'en': 'Give Vote',
      'tr': 'Oy Ver',
    },
    'p4s8c5ry': {
      'en': 'Time Of Voting:',
      'tr': 'Time Of Voting:',
    },
    'nyqx0ta2': {
      'en': '- Ongoing Election -',
      'tr': '- Devam Eden Oylama İşlemi -',
    },
    'ocv84efz': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP6Final
  {
    'm59xgfdw': {
      'en': 'Voting Complete',
      'tr': 'Oylama Tamamlandı',
    },
    'k3syc47n': {
      'en':
          'Congratulations!\n\nYour vote has been\n successfully registered.\n\nYou can follow the election\n results from the Results Screen\n on Mobile or Web.',
      'tr':
          'Tebrikler!\n\nOyunuz başarıyla kaydedilmiştir.\n\nSeçim sonuçlarını Mobil veya Web üzerinden Sonuçlar Ekranından takip edebilirsiniz.',
    },
    'popoty35': {
      'en': 'Finish',
      'tr': 'Bitir',
    },
    'lepo6kre': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // SifremiUnuttumP1
  {
    'abn5eail': {
      'en': 'I forgot my password',
      'tr': 'Şifremi Unuttum',
    },
    'cxqdomnu': {
      'en': 'Please enter the ID number whose password you want to change.',
      'tr': 'Lütfen şifresini değiştirmek istediğiniz kimlik numarasını girin.',
    },
    '22jisjra': {
      'en': 'Identity Number',
      'tr': 'TC Kimlik Numarası',
    },
    '2dwoorks': {
      'en': 'Next',
      'tr': 'İlerle',
    },
    'bfmhq2jw': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // SifremiUnuttumP2
  {
    'xqqxc0wp': {
      'en': 'I forgot my password',
      'tr': 'Şifremi Unuttum',
    },
    'iygglmz2': {
      'en': 'Your e-mail address:',
      'tr': 'E-mail adresiniz:',
    },
    'pzv4yu42': {
      'en': 'Please enter your e-mail address.',
      'tr': 'Lütfen e-mail adresinizi giriniz.',
    },
    '6sx796tr': {
      'en': 'E-mail',
      'tr': 'E-mail',
    },
    'z9cipzrd': {
      'en': 'Next',
      'tr': 'İlerle',
    },
    'ihwie00y': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // SifremiUnuttumP3
  {
    'z1bv5uwo': {
      'en': 'I forgot my password',
      'tr': 'Şifremi Unuttum',
    },
    'ks0dbnt0': {
      'en': 'Please enter your new password.',
      'tr': 'Lütfen yeni şifrenizi girin.',
    },
    '1rzggefl': {
      'en': 'Your new password',
      'tr': 'Yeni şifreniz',
    },
    'y24y3zgx': {
      'en': 'Renter your new password',
      'tr': 'Yeni şifrenizi tekrar giriniz',
    },
    'sc5byoun': {
      'en': 'Next',
      'tr': 'İlerle',
    },
    'ah10rit2': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // HowvotingWorksP1
  {
    'sjd172fg': {
      'en': '0%',
      'tr': '0%',
    },
    'vdq4klgd': {
      'en': 'Tutorial',
      'tr': 'Eğitim',
    },
    'bh30p9wp': {
      'en':
          'Welcome to e-lection!\n\nIn this quick tutorial you will find\nvarious information about\nvoting process in e-lection.',
      'tr':
          'Hoş Geldiniz!\n\nBu kısa eğitimde e-lection\nuygulaması üzerinden\noy kullanma süreci ile\nalakalı bilgiler bulacaksınız.',
    },
    'ffm861c7': {
      'en':
          '\nVoting on e-lection is easy.\nFirstly let\'s proceed with finding\na election.',
      'tr':
          '\ne-lection ile oy kullanmak basittir.\nÖncelikle aradığınız seçimi\nbulmak ile başlayalım.',
    },
    'gcs6w6su': {
      'en': 'Start',
      'tr': 'Başla',
    },
    'pzxmokbo': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // HowvotingWorksP2
  {
    '0upmwk6i': {
      'en': '15%',
      'tr': '15%',
    },
    'lb3xiwo6': {
      'en': 'Finding an election',
      'tr': 'Seçim Bulmak',
    },
    'hsskn1zo': {
      'en':
          'Firstly, click on \"Voting\" tab on \"Menu\".\nClick \"Give Vote\" button.\n Then find and click\n\"My next upcoming election\" \nor you can simply seach any election\nwith search bar.',
      'tr':
          'İlk olarak, \"Menü\" üzerindeki \n\"Oylama\" sekmesine tıklayın.\n\"Oy Ver\" butonuna tıklayın.\n Sonra \"Bir sonraki seçimim\" \nyazısını bulun.\nYa da basitçe arama çubuğu ile\nherhangi bir seçimi arayabilirsiniz',
    },
    'urogro65': {
      'en': 'Next',
      'tr': 'İleri',
    },
    '44nwtma7': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // HowvotingWorksP3
  {
    'efw2ntbg': {
      'en': '30%',
      'tr': '30%',
    },
    'v4f3bgph': {
      'en': 'Election Page',
      'tr': 'Seçim Sayfası',
    },
    'tqmwviw9': {
      'en':
          'Now you will see your next\nupcoming election page. You can \nsee the status of the election \nindicated in the page.\n\nThere are 4 stages of a election\nwhich is:\nVoting Not Started\nVoting Started\nVoting Ended\nResults Anounced\n\n If voting is started you can\n proceed by clicking \"Give Vote\"\nbutton.\n',
      'tr':
          'Şimdi bir sonraki yaklaşan\n seçiminizi göreceksiniz. \nSayfada belirtilen \nseçimin durumunu görebilirsiniz.\n\nBir seçimin 4 aşaması vardır:\nOylama Başlatılmadı\nOylama Başladı\nOylama Sona Erdi\nSonuçlar Açıklandı\n\n Oylama başladıysa \"Oy Ver\" \nbutonuna tıklayarak \ndevam edebilirsiniz.\n',
    },
    '1hsmtp05': {
      'en': 'Next',
      'tr': 'İleri',
    },
    '5qjaz33a': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // HowvotingWorksP4
  {
    '1v9p13tq': {
      'en': '50%',
      'tr': '50%',
    },
    'iijs6gar': {
      'en': 'Warnings',
      'tr': 'Uyarılar',
    },
    'wyg1vjl1': {
      'en':
          'After clicking \"Give Vote\" button you\nwill see important warnings.\nPlease read these carefully or\nyour vote may invalidated.\nClicking the \"Next\" button will\n take you to the electronic\nballot.',
      'tr':
          '\"Oy Ver\" butonuna tıkladıktan\n sonra önemli uyarılar  göreceksiniz.\nLütfen bunları dikkatlice\n okuyunuz, aksi takdirde \noyunuz geçersiz sayılabilir.\n\"İleri\" düğmesine tıklamak \nsizi elektronik oy pusulasına\n götürecektir.',
    },
    'ezzvfnjq': {
      'en': 'Next',
      'tr': 'İleri',
    },
    '4zdog414': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // HowvotingWorksP5
  {
    'ft4i1bzc': {
      'en': '65%',
      'tr': '65%',
    },
    'cle3u0s5': {
      'en': 'Electronic Voting Ballot',
      'tr': 'Elektronik Oy Pusulası',
    },
    '2q7auu3j': {
      'en':
          'In the above you can see a \nexample ballot.\nSimply tap on the circle next\nto your desired candidate.\nRemember to check your timer \n(may not exist for your election)\n located right above the ballot.\nThen tap to \"Next\" after.',
      'tr':
          'Yukarıdaki resimde örnek bir oy \npusulası görebilirsiniz.\nİstediğiniz adayın yanındaki \ndaireye dokunmanız yeterlidir.\nEğer varsa sayacınızı kontrol\netmeyi unutmayın.\n\nArdından \"İleri\" seçeneğine\n dokunun.',
    },
    'eqj14tn0': {
      'en': 'Next',
      'tr': 'İleri',
    },
    'udb7esyl': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // HowvotingWorksP6
  {
    '3bmqng4t': {
      'en': '80%',
      'tr': '80%',
    },
    'iprdhtvp': {
      'en': 'Confirming Information',
      'tr': '',
    },
    'osuug5hg': {
      'en':
          'After clicking next you will have a\nchance to check your information\nand your vote.\n\nIf you are sure all of the information\nyou see is corret then simply click\n\"Give Vote\"',
      'tr':
          'İleri butonuna tıkladıktan\n sonra bilgilerinizi ve oyunuzu \nkontrol etme şansınız olacak.\n\nGördüğünüz tüm bilgilerin doğru \nolduğundan eminseniz, \n\"Oy Ver\" butonuna tıklayınız.',
    },
    '56e9d83e': {
      'en':
          'Remember you CAN NOT change\nyour vote after clicking \"Give Vote\".',
      'tr': 'Tıkladıktan sonra oyunuzu\n değiştiremeyeceğinizi unutmayın.',
    },
    'hyxtiyh5': {
      'en': 'Next',
      'tr': 'İleri',
    },
    'xx9nbtdq': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // HowvotingWorksP7
  {
    'p7uaox54': {
      'en': '100%',
      'tr': '100%',
    },
    'i86v3ydh': {
      'en': 'End of Tutorial',
      'tr': 'Eğitimin Sonu',
    },
    '9plm6014': {
      'en': 'That\'s It!',
      'tr': 'İşte Bu Kadar!',
    },
    'fbplyiuy': {
      'en':
          '\nNext, you will see the confirmation \npage. After that, you can check \nthe process in election page in\n web or mobile app.\n\nThis is the end of the tutorial.\nIf you believe you have still questions \nin your mind, you can always\ncontact us!',
      'tr':
          'Sonrasında ise onay ekranı karşınıza\n gelecektir.  Daha sonra oylamanın\ndurumunu ve sonuçlarını\nmobil uygulama veya Web\nüzerinden takip edebileceksiniz.\n\nEğitimin sonuna ulaştınız.\nEğer aklınızda hala soru kaldığını\ndüşünüyorsanız bize\nulaşabilirsiniz.',
    },
    'i9wjwlzb': {
      'en': 'Finish',
      'tr': 'Bitir',
    },
    'n9fede48': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // YardimMerkezi
  {
    '52u4i0d3': {
      'en': 'Help Center',
      'tr': 'Yardım Merkezi',
    },
    '54sztl2t': {
      'en': 'How can we help today?',
      'tr': 'Size bugün nasıl yardımcı olabiliriz?',
    },
    'o2t0rxbo': {
      'en': 'Frequently Asked Questions',
      'tr': 'Sık Sorulan Sorular',
    },
    'ovcs1ucb': {
      'en': 'Before you contact us get quick answers\nin FAQ.',
      'tr':
          'Bize Ulaşmadan önce sık sorulan sorulara\nbakarak hızlı cevaplara ulaşın.',
    },
    '335kh58w': {
      'en': 'Contact us',
      'tr': 'Bize Ulaşın',
    },
    '3l8utzbz': {
      'en': 'We\'re here to help.\nYou can contact us anytime you need.',
      'tr':
          'Size yardım etmek için buradayız. \nİhtiyacınız olduğu her an bize ulaşabilirsiniz.',
    },
    'tm7vk67t': {
      'en': 'How Voting Works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'kc1gbhpv': {
      'en': 'We recommend to take a \nlook on our guide.',
      'tr':
          'Oylama ile ilgili aklınızdaki sorular için\nrehberimize bakmanızı tavsiye ediyoruz.',
    },
    '1c9c3nej': {
      'en': 'v1.0.2 stable',
      'tr': 'v1.0.2 stable',
    },
    'am920q9n': {
      'en': 'Give feedback about the app',
      'tr': 'Uygulama hakkında geri bildirim verin',
    },
    '4a4ccop0': {
      'en': 'e-lection Terms of Use and User Consent',
      'tr': 'e-lection Kullanım Şartları ve Kullanıcı Rıza Onayı',
    },
    'fsjh8smy': {
      'en': '© 2024, e-lection. Electronic voting solutions.',
      'tr': '© 2024, e-lection. Elektronik oylama çözümleri.',
    },
    'h36xoddp': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // ContactUs
  {
    'toj3s98v': {
      'en': 'Contact Us',
      'tr': 'Bize ulaşın',
    },
    'cv23mvee': {
      'en': 'If you can\'t find your answers we\'re here\nto help.',
      'tr':
          'Eğer aradığınız cevabı bulamadıysanız\nsize yardımcı olmak için buradayız.',
    },
    'w2x1w204': {
      'en': 'Frequently Asked Questions',
      'tr': 'Sık Sorulan Sorular',
    },
    'jated7im': {
      'en': 'Before you contact us get quick answers\nin FAQ.',
      'tr':
          'Bize Ulaşmadan önce sık sorulan sorulara\nbakarak hızlı cevaplara ulaşın.',
    },
    '701jvz1g': {
      'en':
          'Adress: Kızılcaşar Mahallesi, 1184. Cad No:13, 06830 İncek, Gölbaşı - Ankara - Türkiye\n\n\nPhone:  +90 (312) 353 28 46\n\n\nMail:  support@e-lection.com',
      'tr':
          'Adres: Kızılcaşar Mahallesi, 1184. Cad No:13, 06830 İncek, Gölbaşı - Ankara - Türkiye\n\n\nTelefon:  +90 (312) 586 80 00 Pbx\n\nMail: support@e-lection.com',
    },
    'o3bmqx93': {
      'en': '© 2024, e-lection. Electronic voting solutions.',
      'tr': '© 2024, e-lection. Elektronik oylama çözümleri.',
    },
    'iuzwuyjg': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // HowToVoteBallots
  {
    'w8f231kw': {
      'en': '< Ongoing Election',
      'tr': '< Devam Eden Oylama İşlemi',
    },
    '8j9eujba': {
      'en': 'Electronic Voting Ballot Help',
      'tr': 'Elektronik Oy Pusulası \nYardımı',
    },
    'c4sfretk': {
      'en':
          'In the above you can see a example\nballot.\nSimply tap on the circle next\nto your desired candidate.\nThen tap to \"Next\". After that check\nyour vote and tap \"Give Vote\".\n\nDo not leave from the app before\nseeing voting complete screen.\n\nYou can see your time left for\nyour voting right above the ballot.\nCheck your timer and do not\nexceed it. If your timer runs out\nyour vote may be invalidated.',
      'tr':
          'Yukarıdaki resimde örnek bir oy \npusulası görebilirsiniz.\nİstediğiniz adayın yanındaki \ndaireye dokunmanız yeterlidir.\nArdından \"İleri\" seçeneğine dokunun.\nOyunuzu kontrol edin ve \"Oy ver\"\nseçeneğine dokunun.\nOylama işlemi tamamlanmadan\nuygulamadan ayrrılmayıınıız.',
    },
    'pc84poeo': {
      'en': 'Back',
      'tr': 'Geri',
    },
    'sjfghpb9': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // SifremiDegistir
  {
    '4x16j5js': {
      'en': 'Change My Password',
      'tr': 'Şifremi Değiştir',
    },
    'h7s7jor5': {
      'en': 'Please enter your new password.',
      'tr': 'Lütfen yeni şifrenizi girin.',
    },
    'uqvuwo8s': {
      'en': 'Your old password',
      'tr': 'Eski şifreniz',
    },
    'atc8esii': {
      'en': 'Your new password',
      'tr': 'Yeni şifreniz',
    },
    'lvsij8kk': {
      'en': 'Renter your new password',
      'tr': 'Yeni şifrenizi tekrar giriniz',
    },
    'abj15fg2': {
      'en': 'Next',
      'tr': 'İlerle',
    },
    'y7v90fxd': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // Hakkimda
  {
    'o9yghkph': {
      'en': 'About Me',
      'tr': 'Hakkımda',
    },
    'mii4s14h': {
      'en': 'My information on e-lection',
      'tr': 'e-lection\'daki bilgilerim',
    },
    '39yj81ul': {
      'en': 'Wallet ID as a Voter:',
      'tr': 'Seçmen olarak Wallet ID\'niz:',
    },
    '94oxiqgt': {
      'en': '',
      'tr': 'Şifre',
    },
    'otslyc51': {
      'en': 'Copy your Wallet ID - Voter',
      'tr': 'Wallet ID\'ni kopyala - Seçmen',
    },
    '5zso1b5v': {
      'en': 'Wallet ID as a Election Committee:',
      'tr': 'Oylama Yöneticisi olarak Wallet ID\'niz:',
    },
    'ob1nl91f': {
      'en': '',
      'tr': 'Şifre',
    },
    'd3xye1ek': {
      'en': 'Copy your Wallet ID - Election Committee',
      'tr': 'Wallet ID\'ni kopyala - Oylama Yöneticisi',
    },
    '1606jqu9': {
      'en': 'Name & Surname: ',
      'tr': 'Ad Soyad:',
    },
    'ws5v7bvx': {
      'en': 'E-mail: ',
      'tr': 'E-mail:',
    },
    'fr7vskal': {
      'en': 'Change your e-mail address',
      'tr': 'E-mail adresini değiştir',
    },
    'uyp95v4h': {
      'en': 'Phone Number',
      'tr': 'Telefon Numarası',
    },
    '5gazk705': {
      'en': 'Change your phone number',
      'tr': 'Telefon numaranı değiştir',
    },
    'hbvuotzo': {
      'en': 'Delete my e-lection account',
      'tr': 'e-lection hesabımı sil',
    },
    '8kph6ycl': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OylamaAdaylar
  {
    'p81j1c6n': {
      'en': 'Candidates and Committee',
      'tr': 'Adaylar ve Seçim Kurulu',
    },
    'zu7darch': {
      'en': 'Election Committee',
      'tr': 'Seçim Kurulu',
    },
    'jck3l03s': {
      'en': 'This committee has',
      'tr': 'Bu komitede',
    },
    'm4xpe9mq': {
      'en': 'members.',
      'tr': 'üye var.',
    },
    'tg1jzyrt': {
      'en': 'Candidates',
      'tr': 'Adaylar',
    },
    '4hqfxn22': {
      'en': 'There are',
      'tr': 'Bu oylamada',
    },
    '93h6q1nv': {
      'en': 'candidates in this election',
      'tr': 'aday bulunuyor',
    },
    'yinytk69': {
      'en': 'Back',
      'tr': 'Geri',
    },
    't2p4arx2': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // Oylamastats
  {
    '3zx346i1': {
      'en': 'Statistic & Result',
      'tr': 'İstatistik & Sonuç',
    },
    'dpu20828': {
      'en': 'Percent',
      'tr': 'Yüzde',
    },
    'd3ykk7ry': {
      'en': 'won the election',
      'tr': 'İstatistik & Sonuç',
    },
    'e6fiwdks': {
      'en': 'with',
      'tr': 'İstatistik & Sonuç',
    },
    'pff6m7p0': {
      'en': 'votes.',
      'tr': 'İstatistik & Sonuç',
    },
    'kw2sqkg7': {
      'en': 'won the election',
      'tr': 'adlı aday,',
    },
    '2h4iayyy': {
      'en': 'won the election',
      'tr': 'oy ile',
    },
    'flyupn2i': {
      'en': 'with',
      'tr': 'oylamayı kazandı.',
    },
    'xzk0pceq': {
      'en': 'Count',
      'tr': 'Sayısal',
    },
    'puyt4noi': {
      'en': 'won the election',
      'tr': 'İstatistik & Sonuç',
    },
    'yj72k41s': {
      'en': 'with',
      'tr': 'İstatistik & Sonuç',
    },
    '55q0c315': {
      'en': 'votes.',
      'tr': 'İstatistik & Sonuç',
    },
    'o54hue38': {
      'en': 'won the election',
      'tr': 'adlı aday,',
    },
    'pldidyl2': {
      'en': 'won the election',
      'tr': 'oy ile',
    },
    'cvn68t6c': {
      'en': 'with',
      'tr': 'oylamayı kazandı.',
    },
    'pc30v98z': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // termsOfUse
  {
    'zt7rx9bv': {
      'en': 'Terms of Use and User Consent',
      'tr': 'Kullanım Koşulları ve Rıza Onayı',
    },
    'zd9q9k6i': {
      'en':
          'Terms of Use and User Consent\n\n1. Introduction\n\nWelcome to e-lection, the blockchain-integrated voting application (\"App\"). By accessing or using the App, you agree to comply with and be bound by these Terms of Use (\"Terms\"). These Terms govern your access to and use of the App, including any content, functionality, and services offered through the App.\n\n2. User Registration\n\na. In order to use certain features of the App, you may be required to register and create an account. You agree to provide accurate, current, and complete information during the registration process.\n\nb. You are solely responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You agree to notify us immediately of any unauthorized use of your account or any other breach of security.\n\n3. User Consent\n\na. By using the App, you consent to the collection, processing, and storage of your personal data, including but not limited to your name, email address, voting preferences, and any other information provided by you during registration or while using the App.\n\nb. You understand and agree that e-lection may collect, process, and use your voting data for commercial purposes, including but not limited to research, analysis, and marketing.\n\n4. Use of Blockchain Technology\n\na. The App utilizes blockchain technology to ensure the security, transparency, and immutability of voting data. By using the App, you consent to the use of blockchain technology for these purposes.\n\n5. Intellectual Property\n\na. All intellectual property rights in the App and its content, including but not limited to text, graphics, logos, images, and software, are owned by e-lection or its licensors. You agree not to reproduce, distribute, or create derivative works based on the App or its content without prior written consent from e-lection.\n\n6. Disclaimer of Warranties\n\na. The App is provided on an \"as is\" and \"as available\" basis, without any warranties of any kind, either express or implied. e-lection disclaims all warranties, including but not limited to the implied warranties of merchantability, fitness for a particular purpose, and non-infringement.\n\n7. Limitation of Liability\n\na. In no event shall e-lection be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to loss of profits, data, or goodwill, arising out of or in connection with the use or inability to use the App.\n\n8. Governing Law\n\na. These Terms shall be governed by and construed in accordance with the laws of [Your jurisdiction], without regard to its conflict of law principles.\n\n9. Changes to Terms\n\na. e-lection reserves the right to modify or update these Terms at any time without prior notice. Your continued use of the App following the posting of any changes to these Terms constitutes acceptance of those changes.\n\n10. Contact Us\n\na. If you have any questions or concerns about these Terms or the App, please contact us at support@e-lection.com.\n\nBy clicking \"I Agree\" or by accessing or using the App, you acknowledge that you have read, understood, and agree to be bound by these Terms of Use and User Consent.',
      'tr':
          'Kullanım Koşulları ve Rıza Onayı\n\n1. Giriş\n\ne-lection\'a hoş geldiniz, blok zinciri entegreli oy verme uygulaması (\"Uygulama\"). Uygulamaya erişerek veya kullanarak, bu Kullanım Koşulları (\"Koşullar\") uyarınca uymanızı ve bağlı olmanızı kabul edersiniz. Bu Koşullar, Uygulama aracılığıyla sunulan içerik, işlevsellik ve hizmetleri de içeren erişiminizi ve Uygulama\'yı kullanımınızı yönetir.\n\n2. Kullanıcı Kaydı\n\na. Uygulamanın belirli özelliklerini kullanabilmek için kaydolmanız ve bir hesap oluşturmanız gerekebilir. Kayıt sürecinde doğru, güncel ve eksiksiz bilgi vermeyi kabul edersiniz.\n\nb. Hesap kimlik bilgilerinizin gizliliğini korumak ve hesabınız altında gerçekleşen tüm faaliyetlerden siz sorumlusunuzdur. Hesabınızın yetkisiz kullanımını veya herhangi bir güvenlik ihlalini derhal bize bildirmeyi kabul edersiniz.\n\n3. Kullanıcı Onayı\n\na. Uygulamayı kullanarak, adınız, e-posta adresiniz, oy tercihleriniz ve kayıt sırasında veya Uygulama\'yı kullanırken tarafınızdan sağlanan diğer bilgiler de dahil olmak üzere kişisel verilerinizin toplanmasına, işlenmesine ve depolanmasına onay verirsiniz.\n\nb. e-lection\'ın, ticari amaçlar da dahil olmak üzere oy verme verilerinizi toplamasına, işlemesine ve kullanmasına onay verdiğinizi anlıyor ve kabul ediyorsunuz.\n\n4. Blok Zinciri Teknolojisinin Kullanımı\n\na. Uygulama, oy verme verilerinin güvenliği, şeffaflığı ve değişmezliğini sağlamak için blok zinciri teknolojisini kullanır. Uygulamayı kullanarak, bu amaçlarla blok zinciri teknolojisinin kullanımına onay verirsiniz.\n\n5. Fikri Mülkiyet\n\na. Uygulama ve içeriğindeki tüm fikri mülkiyet hakları, metin, grafikler, logolar, görüntüler ve yazılım dahil ancak bunlarla sınırlı olmamak üzere, e-lection\'a veya lisans verenlerine aittir. e-lection\'ın önceden yazılı izni olmaksızın, Uygulama veya içeriğine dayalı türev eserler oluşturmamanızı kabul edersiniz.\n\n6. Garanti Reddi\n\na. Uygulama, \"olduğu gibi\" ve \"mevcut olduğu şekliyle\" sunulur, herhangi bir türdeki, açık veya zımni tüm garantiler dahil olmak üzere, hiçbir garantinin olmadığı bir temelde sunulur. e-lection, ticari amaç için uygunluk, belirli bir amaca uygunluk ve ihlal etmeme konusundaki zımni garantiler de dahil olmak üzere, tüm garantileri reddeder.\n\n7. Sorumluluk Sınırlaması\n\na. Hiçbir durumda e-lection, Uygulama\'nın kullanımından kaynaklanan veya Uygulama\'nın kullanımının imkansızlaşmasından kaynaklanan dolaylı, arızi, özel, sonuçsal veya cezai zararlardan sorumlu değildir, karlılık kaybı, veri veya iyi niyet kaybı dahil ancak bunlarla sınırlı olmamak üzere.\n\n8. Yürürlükteki Hukuk\n\na. Bu Koşullar, Sizin yargı alanınız yasalarına uygun olarak yürürlüğe konulacak ve yorumlanacaktır, çelişme hükümleri olmaksızın.\n\n9. Koşulların Değiştirilmesi\n\na. e-lection, bu Koşulları önceden bildirim yapmaksızın herhangi bir zamanda değiştirme hakkını saklı tutar. Bu Koşullardaki değişikliklerin yayınlanmasını takiben Uygulama\'nın kullanımınız, bu değişiklikleri kabul ettiğiniz anlamına gelir.\n\n10. Bizimle İletişime Geçin\n\na. Bu Koşullar veya Uygulama ile ilgili herhangi bir sorunuz veya endişeniz varsa, lütfen bizimle şu adresten iletişime geçin: support@e-lection.com.\n\n\"Kabul Ediyorum\" düğmesini tıklayarak veya Uygulamaya erişerek veya kullanarak, bu Kullanım Koşulları ve Kullanıcı Onayını okuduğunuzu, anladığınızı ve bağlı olmayı kabul ettiğinizi beyan edersiniz.',
    },
    '9xr8trgc': {
      'en': 'You Have Already Accepted Terms Of Use \nand User Consent.',
      'tr':
          'Kullanım Koşulları ve Rıza Onayını Kayıt \nOlduğunuzda Kabul Ettiniz.',
    },
    'e3pw0e5r': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OylamaOlusturP3
  {
    'duqynpe2': {
      'en': 'Create Election',
      'tr': 'Oylama Yarat',
    },
    'xqrw0g7x': {
      'en': 'Voters',
      'tr': 'Seçmenler',
    },
    'wgntiigk': {
      'en': 'I want to create a regional election.',
      'tr': 'Bölgesel bir oylama yaratmak istiyorum.',
    },
    'hi287s1h': {
      'en': 'I want to create a custom election.',
      'tr': 'Özel bir oylama yaratmak istiyorum.',
    },
    'fo4bgdr5': {
      'en': 'Add Voter',
      'tr': 'Seçmen Ekle',
    },
    '8atwf5am': {
      'en': 'Add myself as a voter.',
      'tr': 'Seçmen olarak kendimi ekle.',
    },
    '5813glb2': {
      'en':
          'The voting you want to create regionally can be only country-wide, only city-wide, or only district-wide. It is not mandatory to select all options. Simply select the region in which you want to vote regionally.',
      'tr':
          'Bölgesel olarak oluşturmak istediğiniz oylama sadece ülke çapında veya sadece il çapında veya sadece ilçe çapında olabilir. Tüm seçenekleri seçmeniz zorunlu değildir. Bölgesel olarak oylama yapmak istediğiniz bölgeyi seçmeniz yeterlidir.',
    },
    'dukz377p': {
      'en': 'Regional Election Information',
      'tr': 'Bölgesel Oylama Bilgileri',
    },
    '4rxiz1rt': {
      'en': 'Country:',
      'tr': 'Ülke:',
    },
    '0nn638fb': {
      'en': 'City:',
      'tr': 'İl:',
    },
    'd5wcuqc0': {
      'en': 'District:',
      'tr': 'İlçe:',
    },
    '437p8djm': {
      'en': 'Neighbourhood:',
      'tr': 'Mahalle/Köy:',
    },
    '7472l4wj': {
      'en': 'Please select your country.',
      'tr': 'Lütfen ülkenizi seçin.',
    },
    '7u1qvmto': {
      'en': 'Search for an item...',
      'tr': '',
    },
    'z0ztwxsn': {
      'en': 'Please select your city.',
      'tr': 'Lütfen şehrinizi seçin.',
    },
    'nwcswc0g': {
      'en': 'Search for a city...',
      'tr': 'Bir şehir arayın...',
    },
    'betwihvd': {
      'en': 'Please select your district.',
      'tr': 'Lütfen ilçenizi seçin.',
    },
    'xqe25xr1': {
      'en': 'Search for a district...',
      'tr': 'Bir ilçe arayın...',
    },
    'xy9039eg': {
      'en': 'Option 1',
      'tr': '',
    },
    '1bsj3a4h': {
      'en': 'Please select your neighbourhood or village.',
      'tr': 'Lütfen mahallenizi veya köyünüzü seçiniz.',
    },
    'wrq4xy1e': {
      'en': 'Search for a neighbourhood or village...',
      'tr': 'Bir mahalle veya köy arayın...',
    },
    '77w8hnlu': {
      'en':
          'I confirm that I will not be able to return once I have passed this stage.',
      'tr': 'Bu aşamayı geçtikten sonra geri dönemeyeceğimi onaylıyorum.',
    },
    '9k0yx9my': {
      'en': 'Continue',
      'tr': 'İlerle',
    },
    '0qyxpjos': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // FAQ
  {
    'f130o40s': {
      'en': 'Frequently Asked \nQuestions',
      'tr': 'Sık Sorulan Sorular',
    },
    'jmiip34v': {
      'en':
          'You Can Find Various Questions\nWith Answers Below.\n\nYou can simply click the answer cards to\n show their answer.',
      'tr':
          'Çeşitli Sorular ve Cevaplarını Aşağıda Bulabilirsiniz.\n\nKartlara dokunarak cevaplarını gorebilirsiniz.',
    },
    '7mc15a6i': {
      'en': 'Blockchain Questions',
      'tr': 'Blokzinciri Soruları',
    },
    '4x43ij4c': {
      'en':
          'Isn\'t that blockchain and wallets\nrelated to crypto currencies? What is\nthe relation with e-lection?',
      'tr':
          'Blockchain ve cüzdanlar kripto para\nbirimleri ile ilgili değil miydi?\n e-lection ile ilişkisi nedir?',
    },
    'v0ox1pie': {
      'en':
          'While blockchain and wallets are commonly associated with cryptocurrencies, their use in the e-lection app serves a different purpose.  Blockchain wallets provide a secure, transparent, and reliable method for electronic voting.',
      'tr':
          'Blok zinciri ve cüzdanlar genellikle kripto para birimleriyle ilişkilendirilse de, e-seçim uygulamasında kullanımları farklı bir amaca hizmet etmektedir.  Blok zinciri cüzdanları elektronik oylama için güvenli, şeffaf ve güvenilir bir yöntem sağlar.',
    },
    'xb5j801w': {
      'en': 'General Questions',
      'tr': 'Genel Sorular',
    },
    '84im62dv': {
      'en': '1. What is e-lection?',
      'tr': 'e-lection nedir?',
    },
    'uoauxw57': {
      'en':
          'e-lection is a blockchain-integrated voting application that allows users to securely cast their votes for various elections using blockchain technology.\n\n',
      'tr':
          'e-lection, kullanıcıların blok zinciri teknolojisi kullanarak çeşitli seçimler için oy kullanmalarını sağlayan bir blok zinciri entegreli oy verme uygulamasıdır.',
    },
    'g33up34n': {
      'en': '2. How does e-lection ensure the security of my vote?',
      'tr': 'Oyumun güvenliğini e-lection nasıl sağlar?',
    },
    'diuhj9cj': {
      'en':
          'e-lection utilizes blockchain technology, which provides security, transparency, and immutability to the voting process. Each vote is recorded as a transaction on the blockchain, making it tamper-proof.',
      'tr':
          'e-lection, her bir oy işlemini blok zinciri teknolojisi kullanarak kaydederek güvenlik sağlar. Her oy, blok zinciri üzerinde bir işlem olarak kaydedilir, bu oyları müdahale edilemez ve doğrulanabilir hale getirir.',
    },
    '3z9vn7lu': {
      'en': '3. Is my personal data safe with e-lection?',
      'tr': 'Kişisel verilerim e-lection\'da güvende mi?',
    },
    'hykjr7ob': {
      'en':
          'Yes, we take the privacy and security of your personal data very seriously. We employ industry-standard security measures to protect your data and adhere to strict privacy policies.',
      'tr':
          'Evet, kişisel verilerinizin gizliliğini ve güvenliğini ciddiye alıyoruz. Verilerinizi korumak için endüstri standardı güvenlik önlemleri kullanıyor ve katı gizlilik politikalarına uyuyoruz.',
    },
    'vk0kek68': {
      'en': '4. Can I trust the results of the elections on e-lection?',
      'tr': 'e-lection\'daki seçim sonuçlarına güvenebilir miyim?',
    },
    '1cwma8r3': {
      'en':
          'Yes, e-lection ensures the integrity of election results by leveraging blockchain technology, which prevents tampering or manipulation of votes. Additionally, our platform undergoes regular audits to maintain transparency.',
      'tr':
          'Evet, e-lection, blok zinciri teknolojisini kullanarak seçim sonuçlarının bütünlüğünü sağlar; bu da oy kullanımını engelleyen veya manipüle eden bir sistemdir. Ayrıca, platformumuz düzenli denetimlere tabidir.',
    },
    'mkx3066r': {
      'en': '5. Can I change my vote after casting it?',
      'tr': 'Oyumu verdikten sonra değiştirebilir miyim?',
    },
    'pievm466': {
      'en':
          'No, once your vote is cast on e-lection, it is recorded on the blockchain and cannot be altered or revoked. This ensures the integrity and reliability of the voting process.',
      'tr':
          'Hayır, e-lection\'da oy verildikten sonra, blok zinciri üzerinde kaydedilir ve değiştirilemez veya geri alınamaz. Bu, oy verme sürecinin bütünlüğünü ve güvenilirliğini sağlar.',
    },
    'i66kbpo8': {
      'en': '6. What happens to my voting data after the election?',
      'tr': 'Seçimden sonra oy verme verilerim ne olacak?',
    },
    '3qdrjujc': {
      'en':
          'Your voting data may be used for commercial purposes, including research, analysis, and marketing by e-lection. Other data may handled in accordance with our privacy policy and applicable laws.',
      'tr':
          'Oy verme verileriniz, e-lection tarafından araştırma, analiz ve pazarlama gibi ticari amaçlar için kullanılabilir. Kişisel verilerinizin gizliliği ilgili yasalara uygun olarak işlenir.',
    },
    'lh7t418i': {
      'en':
          'If you believe you have still questions in your mind,\nplease contact us anytime you need.',
      'tr':
          'Eğer aklınızda hala soru kaldığını düşünüyorsanız lütfen bize ulaşın.',
    },
    'u4fxtjsr': {
      'en': 'Contact us',
      'tr': 'Bize Ulaşın',
    },
    'dg0qh907': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // BilgiGuncellemeP2
  {
    'sa9l808p': {
      'en': 'Update Your Profile',
      'tr': 'Profilini Güncelle',
    },
    'wsk54q1i': {
      'en': 'Please enter your address.',
      'tr': 'Lütfen adresinizi girin.',
    },
    'usmqixi6': {
      'en': 'Please select your country.',
      'tr': 'Lütfen ülkenizi seçin.',
    },
    '0r2rclc9': {
      'en': 'Search for an item...',
      'tr': '',
    },
    '463m3v9g': {
      'en': 'Please select your city.',
      'tr': 'Lütfen şehrinizi seçin.',
    },
    '6siasvx1': {
      'en': 'Search for a city...',
      'tr': 'Bir şehir arayın...',
    },
    'u3kn1wo3': {
      'en': 'Please select your district.',
      'tr': 'Lütfen ilçenizi seçin.',
    },
    'cqmmnizu': {
      'en': 'Search for a district...',
      'tr': 'Bir ilçe arayın...',
    },
    'p4tgnfkm': {
      'en': 'Option 1',
      'tr': '',
    },
    'es31fj2c': {
      'en': 'Please select your neighbourhood or village.',
      'tr': 'Lütfen mahallenizi veya köyünüzü seçiniz.',
    },
    'te1vgncn': {
      'en': 'Search for a neighbourhood or village...',
      'tr': 'Bir mahalle veya köy arayın...',
    },
    'gaaugy0k': {
      'en':
          'I confirm that I have carefully read \nand accept the Terms Of Use \nand User Consent Form.',
      'tr':
          '  Kullanım Koşullarını ve Rıza Onayını\n  dikkatlice okudum ve kabul ediyorum.',
    },
    'a7fjhsxb': {
      'en': 'View Terms of Use and User Consent Form',
      'tr': ' Kullanım Koşulları ve Rıza Onayını Görüntüle',
    },
    '69w1mgr7': {
      'en': 'Register',
      'tr': 'Kayıt Ol',
    },
    'thoan4ut': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP1devam
  {
    '87xfj9pl': {
      'en': 'Voting Process Has Been Started.',
      'tr': 'Oy Verme Süreci Başladı.',
    },
    'gzubtghz': {
      'en': 'You Are Eligible To Vote.',
      'tr': 'Oy Vermek İçin Uygunsunuz.',
    },
    'fqrg6tqq': {
      'en': 'Give Vote',
      'tr': ' Oy Ver',
    },
    'tz03r0zb': {
      'en': 'Voting Period Ends at:',
      'tr': 'Oylama Sürecinin Bitiş Tarihi:',
    },
    '8upzzory': {
      'en': 'Candidates',
      'tr': ' Adaylar',
    },
    '59i6gofy': {
      'en': 'Statistics',
      'tr': 'İstatistikler',
    },
    'sxp4uuiy': {
      'en': 'Election Description',
      'tr': 'Seçim Açıklaması',
    },
    '3l863dge': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'qkywkstd': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // Acilis
  {
    'cgsj2nxc': {
      'en': 'e-lection',
      'tr': 'e-lection',
    },
    'ycn5zutu': {
      'en': 'Electronic voting solutions',
      'tr': 'Elektronik oylama çözümleri',
    },
    '4xh33qoe': {
      'en': 'Home',
      'tr': 'Anasayfa',
    },
  },
  // OylamaOlusturP4
  {
    'vpi6z5f0': {
      'en': 'Create Election',
      'tr': 'Oylama Yarat',
    },
    '4q1nint7': {
      'en': 'Election Committee Members',
      'tr': 'Oylama Sorumluları',
    },
    'mb082ovj': {
      'en': 'Add Committee Member',
      'tr': 'Sorumlu Ekle',
    },
    'igp44cib': {
      'en': 'Add myself as a election committee member',
      'tr': 'Oylama sorumlusu olarak kendimi ekle.',
    },
    '6qmbzlfr': {
      'en': 'Candidates',
      'tr': 'Adaylar',
    },
    'lbmeoxab': {
      'en': 'Add Candidate',
      'tr': 'Aday Ekle',
    },
    'ksnrfi03': {
      'en':
          'I agree that voting data may be processed by e-lection and used for commercial purposes.',
      'tr':
          'Oylama verilerinin e-lection tarafından işlenebileceği ve ticari amaçlar için kullanılabileceğini onaylıyorum.',
    },
    'wm9rx85e': {
      'en': 'Continue',
      'tr': 'İlerle',
    },
    'pvr1wtcc': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyPaneliP2
  {
    '60ir5pnf': {
      'en': 'Voting Panel',
      'tr': 'Oy Paneli',
    },
    'b189m1kf': {
      'en': 'Details',
      'tr': 'Detaylar',
    },
    'i1bez1n0': {
      'en': 'Election Detail',
      'tr': 'Oylama Açıklaması',
    },
    'f711na4g': {
      'en': 'Election Start Date&Time',
      'tr': 'Oylama Başlangıç Tarih&Saat',
    },
    'f53e5bdv': {
      'en': 'Election End Date&Time',
      'tr': 'Oylama Bitiş Tarih&Saat',
    },
    'pyc3ivd4': {
      'en': 'Change Voting Start - End Date & Time',
      'tr': 'Oylama Başlangıç - Bitiş Tarihi & Saati\'ni Değiştir',
    },
    '6k6kbojw': {
      'en': 'Com. Members',
      'tr': 'Sorumlular',
    },
    'qi7zo0r7': {
      'en': 'Add Committee Member',
      'tr': 'Sorumlu Ekle',
    },
    '5lgpn5e5': {
      'en': 'Candidates',
      'tr': 'Adaylar',
    },
    'l7drvuqc': {
      'en': 'Add Candidate',
      'tr': 'Sorumlu Ekle',
    },
    'pkh58tm3': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP1given
  {
    'iu70m6fl': {
      'en': 'Voting Results Will Be Announced Soon.',
      'tr': 'Oylama Sonuçları Yakında Duyurulacak.',
    },
    '8dn4r5gn': {
      'en': 'You Can See Results After Voting Ends.',
      'tr': 'Oylama Bitince Sonuçları Görüntüleyebilirsiniz',
    },
    'rh4u9y6q': {
      'en': 'Your Vote\nHas Saved.',
      'tr': 'Oyunuz\nKaydedildi.',
    },
    'bt3gkinr': {
      'en': 'Results Will Be Announced at:',
      'tr': 'Oylama Sürecinin Bitiş Tarihi:',
    },
    'qd2erabs': {
      'en': 'Candidates',
      'tr': '  Adaylar',
    },
    'oy7tx1lq': {
      'en': 'Statistics',
      'tr': 'İstatistikler',
    },
    'gtbmbyfl': {
      'en': 'Election Description',
      'tr': 'Seçim Açıklaması',
    },
    '4f9gp10y': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    '3khtl2of': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP1notstartednew
  {
    'p80xpn73': {
      'en': 'Voting Has Not Started Yet.',
      'tr': 'Oylama İşlemi Başlamadı',
    },
    'cusw81i6': {
      'en': 'You can vote after voting starts.',
      'tr': 'Oylama başladığında oy vermek için uygunsunuz.',
    },
    '2p0psqyx': {
      'en': 'Voting Has\nNot Started',
      'tr': 'Oylama\nBaşlamadı',
    },
    'nwheokrq': {
      'en': 'Voting will be start at:',
      'tr': 'Oylama Başlama Tarihi:',
    },
    'wxwsb83i': {
      'en': 'Candidates',
      'tr': ' Adaylar',
    },
    'd3nqnkeo': {
      'en': 'Statistics',
      'tr': 'İstatistikler',
    },
    'q16bgx9v': {
      'en': 'Election Description',
      'tr': 'Seçim Açıklaması',
    },
    'wj2tr0gg': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    '5aonldcp': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP1res
  {
    '8ukwg80e': {
      'en': 'Voting Results Has Been Announced!',
      'tr': 'Oylama Sonuçları Açıklandı.',
    },
    '2fnc7s8e': {
      'en': 'You Can View Results.',
      'tr': 'Sonuçları Görüntüleyebilirsiniz.',
    },
    'w3ggf31c': {
      'en': 'View Results',
      'tr': 'Sonuçları \nGörüntüle',
    },
    'i9i2k1ko': {
      'en': 'Voting was finished at:',
      'tr': 'Oylamanın bittiği tarih:',
    },
    'r2e5xq4e': {
      'en': 'Candidates',
      'tr': ' Adaylar',
    },
    '6gz6k0pd': {
      'en': 'Statistics',
      'tr': 'İstatistikler',
    },
    'mmoa46nr': {
      'en': 'Election Description',
      'tr': 'Seçim  Açıklaması',
    },
    'h4wxb325': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'bmoccz6k': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // changeEmail
  {
    't6fnaaew': {
      'en': 'Enter your new e-mail address:',
      'tr': 'Yeni mail adresinizi giriniz:',
    },
    '444s9tlp': {
      'en': '',
      'tr': 'E-mail',
    },
    'ime8mxtk': {
      'en': 'Save',
      'tr': 'Kaydet',
    },
  },
  // changePhoneNumber
  {
    'cnqpfzi5': {
      'en': 'Enter your new phone number:',
      'tr': 'Yeni telefon numaranızı giriniz:',
    },
    'dt19nlbl': {
      'en': '',
      'tr': 'E-mail',
    },
    '8bfmm7of': {
      'en': 'Save',
      'tr': 'Kaydet',
    },
  },
  // deleteAccount
  {
    '5poiecdo': {
      'en': 'For your e-lection account deletion, ',
      'tr': 'e-lection hesap silme işleminiz için, ',
    },
    'q4gn2j7m': {
      'en':
          'Contact us by e-mail \"info@election.com\" or by phone \"+90 (312) 353 28 46\". Let us help you!',
      'tr':
          '\"info@election.com\" mail adresinden veya \"+90 (312) 353 28 46\" numaralı telefondan bize ulaşın. Size yardımcı olalım!',
    },
  },
  // addCommitteeMember
  {
    'pytsrzxe': {
      'en': 'Enter the committee member\'s wallet ID:',
      'tr': 'Oylama sorumlusunun cüzdan numarasını giriniz:',
    },
    'vwq9ql1w': {
      'en': '',
      'tr': 'E-mail',
    },
    'idzapqlr': {
      'en': 'Save',
      'tr': 'Kaydet',
    },
  },
  // addCandidate
  {
    '0151bv8f': {
      'en': 'Enter the candidate information:',
      'tr': 'Aday bilgisini yazınız:',
    },
    '7s5bo6e2': {
      'en': 'Name',
      'tr': 'İsim',
    },
    'a0qrvtq5': {
      'en': '',
      'tr': '',
    },
    'x0e06p7n': {
      'en': 'Surname',
      'tr': 'Soyad',
    },
    'fykbdbmc': {
      'en': 'Save',
      'tr': 'Kaydet',
    },
  },
  // addVoter
  {
    'behlv6t5': {
      'en': 'Enter the voter\'s wallet ID:',
      'tr': 'Seçmenin cüzdan numarasını giriniz:',
    },
    'wrti3fsf': {
      'en': '',
      'tr': 'E-mail',
    },
    'lroqgoxh': {
      'en': 'Save',
      'tr': 'Kaydet',
    },
  },
  // deleteElecComMember
  {
    'od079ghb': {
      'en': 'Are you sure you want to remove the election committee member?',
      'tr': 'Oylama sorumlusunu kaldırmak istediğinize emin misiniz?',
    },
    'n0o4t6xp': {
      'en': 'Yes',
      'tr': 'Evet',
    },
    '9qfbml3c': {
      'en': 'No',
      'tr': 'Hayır',
    },
  },
  // voterPopup
  {
    'dzfcx3h8': {
      'en': 'If you check \"I want to create a regional election\":',
      'tr':
          'Eğer \"Bölgesel bir oylama yaratmak istiyorum.\" seçeneğini işaretlerseniz:',
    },
    '9pz7mvfi': {
      'en':
          'The created vote is shown to all e-lection users with addresses in the country, province, district or neighborhood you have selected.',
      'tr':
          'Oluşturulan oylama seçmiş olduğunuz ülke, il, ilçe veya mahalle\'de adresi bulunan tüm e-lection kullanıcılarına gösterilir.',
    },
    '4lr72fdc': {
      'en': 'If you check \"I want to create a custom election\":',
      'tr':
          'Eğer \"Özel bir oylama yaratmak istiyorum.\" seçeneğini işaretlerseniz:',
    },
    'w7tuwq4f': {
      'en':
          'The created vote is displayed only for e-lection user voters whose wallet numbers you have added.',
      'tr':
          'Oluşturulan oylama sadece cüzdan numaralarını eklemiş olduğunuz e-lection kullanıcısı seçmenlerde görüntülenir.',
    },
    'i8fwbn5q': {
      'en': 'OK',
      'tr': 'Tamam',
    },
  },
  // acilisPopup
  {
    '343ktr0t': {
      'en': 'You couldn\'t enter e-lection!',
      'tr': 'e-lection\'a giremedin!',
    },
    'vze7caba': {
      'en':
          'Because you don\'t have an active internet connection. Please connect to the internet and try again.',
      'tr':
          'Çünkü internet bağlantın yok. Lütfen internete bağlanıp tekrar deneyin.',
    },
    'mqgr86mw': {
      'en': 'Log Out',
      'tr': 'Çıkış Yap',
    },
    '9p6suzi3': {
      'en': 'Try Again',
      'tr': 'Tekrar Dene',
    },
  },
  // timewarn
  {
    '42rx8464': {
      'en': 'Warning!\nThis Voting Has Time Limit',
      'tr': 'Oy Pusulasına devam etmek istediğinize emin misiniz?',
    },
    '06ixus75': {
      'en':
          'After Continue for ballot, you have\nonly 10 minutes to vote.  If you \nexceed this time limit your vote \nwill be invalidated.',
      'tr':
          'İlerledikten sonra bu seçim için \nyanlızca 10 dakikanız bulunmaktadır.\nBu süreyi geçmeniz halinde oyunuz geçersiz sayılacaktır.',
    },
    'b7ez0huk': {
      'en': 'Continue to Ballot',
      'tr': 'Oy Pusulasına Git',
    },
    'w5v6831d': {
      'en': 'Back',
      'tr': 'Geri',
    },
  },
  // deleteVoter
  {
    '53ea0rzn': {
      'en': 'Are you sure you want to remove the voter?',
      'tr': 'Seçmeni kaldırmak istediğinize emin misiniz?',
    },
    '3rtswhjw': {
      'en': 'Yes',
      'tr': 'Evet',
    },
    '4945pe4o': {
      'en': 'No',
      'tr': 'Hayır',
    },
  },
  // deleteCandidate
  {
    'zncbgw0r': {
      'en': 'Are you sure you want to remove the candidate?',
      'tr': 'Seçmeni kaldırmak istediğinize emin misiniz?',
    },
    '0pocb8zm': {
      'en': 'Yes',
      'tr': 'Evet',
    },
    'wzt9mzd5': {
      'en': 'No',
      'tr': 'Hayır',
    },
  },
  // StatsNA
  {
    'wzj21glh': {
      'en': 'Statistics Are Not Available Yet',
      'tr': 'İstatistikler Oluşturulmadı',
    },
    'shjlxr5s': {
      'en': 'Statistics will be available after \nvoting period ends.',
      'tr':
          'İstatistikler Oylama süresi bittikten\nsonra görüntülenebilecektir.',
    },
    'fgk9cumn': {
      'en': 'Back',
      'tr': 'Geri',
    },
  },
  // oyPaneliComponent
  {
    '3mms5epz': {
      'en':
          'The election(s) that you are election committee member were not found.',
      'tr': 'Sorumlu olduğun oylama(lar) bulunamadı.',
    },
  },
  // saatTarihDegistirPopup
  {
    '6vsdasak': {
      'en': 'Voting Start Date & Time',
      'tr': 'Oylama Başlangıç Tarihi & Saati',
    },
    'sl1aip89': {
      'en': 'Voting Start Date & Time:',
      'tr': 'Oylama Başlangıç Tarihi & Saati',
    },
    '16ngl0u3': {
      'en': 'Voting End Date & Time',
      'tr': 'Oylama Bitiş Tarihi & Saati',
    },
    '2jx1yyr7': {
      'en': 'Voting End Date & Time:',
      'tr': 'Oylama Bitiş Tarihi & Saati',
    },
    'vpo09xoq': {
      'en': 'Save',
      'tr': 'Kaydet',
    },
  },
  // deleteComMemOyPanel
  {
    '7xj7fg2z': {
      'en': 'Are you sure you want to remove the election committee member?',
      'tr': 'Oylama sorumlusunu kaldırmak istediğinize emin misiniz?',
    },
    'b3cqmtzg': {
      'en': 'Yes',
      'tr': 'Evet',
    },
    'uvcvnyzo': {
      'en': 'No',
      'tr': 'Hayır',
    },
  },
  // deleteCandidateOyPanel
  {
    'bitgnxfx': {
      'en': 'Are you sure you want to remove the candidate?',
      'tr': 'Seçmeni kaldırmak istediğinize emin misiniz?',
    },
    '2ojysj4e': {
      'en': 'Yes',
      'tr': 'Evet',
    },
    'x29bidsn': {
      'en': 'No',
      'tr': 'Hayır',
    },
  },
  // addCandidateOyPanel
  {
    '4d7bl84y': {
      'en': 'Enter the candidate information:',
      'tr': 'Aday bilgisini yazınız:',
    },
    'sb0ow8jt': {
      'en': 'Name',
      'tr': 'İsim',
    },
    't7ztgcqq': {
      'en': '',
      'tr': '',
    },
    '10jqd6ix': {
      'en': 'Surname',
      'tr': 'Soyad',
    },
    'e1vvil1t': {
      'en': 'Save',
      'tr': 'Kaydet',
    },
  },
  // addComMemOyPanel
  {
    '6ls4dzd9': {
      'en': 'Enter the committee member\'s wallet ID:',
      'tr': 'Oylama sorumlusunun cüzdan numarasını giriniz:',
    },
    'h8s4s4rg': {
      'en': '',
      'tr': 'E-mail',
    },
    'u5v6ewah': {
      'en': 'Save',
      'tr': 'Kaydet',
    },
  },
  // VotingDesc
  {
    'ynm39k1h': {
      'en': 'Election Description',
      'tr': 'Oylama Detayı',
    },
    '6s61j95s': {
      'en': 'Back',
      'tr': 'Geri',
    },
  },
  // Satisfaction
  {
    'jj6m0el4': {
      'en': 'From 1 to 5 Overally how\n satisfied from using e-lection app?',
      'tr':
          'Genel olarak 1 en kötü ile 5 en iyi olarak değerlendirdiğinizde e-lection\nuygulamasından ne kadar memnunsunuz?',
    },
    '9bcqb915': {
      'en': '1 Not Satisfied',
      'tr': '1',
    },
    'co3006qs': {
      'en': '2',
      'tr': '2',
    },
    'noxjnf30': {
      'en': '3',
      'tr': '3',
    },
    'ba02u1gn': {
      'en': '4',
      'tr': '4',
    },
    'qwhtqvmg': {
      'en': '5 Satisfied',
      'tr': '5',
    },
    '6xvo058q': {
      'en': '',
      'tr': '',
    },
    'f9awqk8a': {
      'en': 'Save',
      'tr': 'Kaydet',
    },
  },
  // ToScomp
  {
    'droasiec': {
      'en': 'e-lection Terms of Use and\n User Consent Form',
      'tr': 'e-lection Kullanım Şartları\nve Kullanıcı Rızası Formu',
    },
    'tpruek2x': {
      'en':
          'Terms of Use and User Consent\n\n1. Introduction\n\nWelcome to e-lection, the blockchain-integrated voting application (\"App\"). By accessing or using the App, you agree to comply with and be bound by these Terms of Use (\"Terms\"). These Terms govern your access to and use of the App, including any content, functionality, and services offered through the App.\n\n2. User Registration\n\na. In order to use certain features of the App, you may be required to register and create an account. You agree to provide accurate, current, and complete information during the registration process.\n\nb. You are solely responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You agree to notify us immediately of any unauthorized use of your account or any other breach of security.\n\n3. User Consent\n\na. By using the App, you consent to the collection, processing, and storage of your personal data, including but not limited to your name, email address, voting preferences, and any other information provided by you during registration or while using the App.\n\nb. You understand and agree that e-lection may collect, process, and use your voting data for commercial purposes, including but not limited to research, analysis, and marketing.\n\n4. Use of Blockchain Technology\n\na. The App utilizes blockchain technology to ensure the security, transparency, and immutability of voting data. By using the App, you consent to the use of blockchain technology for these purposes.\n\n5. Intellectual Property\n\na. All intellectual property rights in the App and its content, including but not limited to text, graphics, logos, images, and software, are owned by e-lection or its licensors. You agree not to reproduce, distribute, or create derivative works based on the App or its content without prior written consent from e-lection.\n\n6. Disclaimer of Warranties\n\na. The App is provided on an \"as is\" and \"as available\" basis, without any warranties of any kind, either express or implied. e-lection disclaims all warranties, including but not limited to the implied warranties of merchantability, fitness for a particular purpose, and non-infringement.\n\n7. Limitation of Liability\n\na. In no event shall e-lection be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to loss of profits, data, or goodwill, arising out of or in connection with the use or inability to use the App.\n\n8. Governing Law\n\na. These Terms shall be governed by and construed in accordance with the laws of [Your jurisdiction], without regard to its conflict of law principles.\n\n9. Changes to Terms\n\na. e-lection reserves the right to modify or update these Terms at any time without prior notice. Your continued use of the App following the posting of any changes to these Terms constitutes acceptance of those changes.\n\n10. Contact Us\n\na. If you have any questions or concerns about these Terms or the App, please contact us at support@e-lection.com.\n\nBy clicking \"I Agree\" or by accessing or using the App, you acknowledge that you have read, understood, and agree to be bound by these Terms of Use and User Consent.',
      'tr':
          'Kullanım Koşulları ve Rıza Onayı\n\n1. Giriş\n\ne-lection\'a hoş geldiniz, blok zinciri entegreli oy verme uygulaması (\"Uygulama\"). Uygulamaya erişerek veya kullanarak, bu Kullanım Koşulları (\"Koşullar\") uyarınca uymanızı ve bağlı olmanızı kabul edersiniz. Bu Koşullar, Uygulama aracılığıyla sunulan içerik, işlevsellik ve hizmetleri de içeren erişiminizi ve Uygulama\'yı kullanımınızı yönetir.\n\n2. Kullanıcı Kaydı\n\na. Uygulamanın belirli özelliklerini kullanabilmek için kaydolmanız ve bir hesap oluşturmanız gerekebilir. Kayıt sürecinde doğru, güncel ve eksiksiz bilgi vermeyi kabul edersiniz.\n\nb. Hesap kimlik bilgilerinizin gizliliğini korumak ve hesabınız altında gerçekleşen tüm faaliyetlerden siz sorumlusunuzdur. Hesabınızın yetkisiz kullanımını veya herhangi bir güvenlik ihlalini derhal bize bildirmeyi kabul edersiniz.\n\n3. Kullanıcı Onayı\n\na. Uygulamayı kullanarak, adınız, e-posta adresiniz, oy tercihleriniz ve kayıt sırasında veya Uygulama\'yı kullanırken tarafınızdan sağlanan diğer bilgiler de dahil olmak üzere kişisel verilerinizin toplanmasına, işlenmesine ve depolanmasına onay verirsiniz.\n\nb. e-lection\'ın, ticari amaçlar da dahil olmak üzere oy verme verilerinizi toplamasına, işlemesine ve kullanmasına onay verdiğinizi anlıyor ve kabul ediyorsunuz.\n\n4. Blok Zinciri Teknolojisinin Kullanımı\n\na. Uygulama, oy verme verilerinin güvenliği, şeffaflığı ve değişmezliğini sağlamak için blok zinciri teknolojisini kullanır. Uygulamayı kullanarak, bu amaçlarla blok zinciri teknolojisinin kullanımına onay verirsiniz.\n\n5. Fikri Mülkiyet\n\na. Uygulama ve içeriğindeki tüm fikri mülkiyet hakları, metin, grafikler, logolar, görüntüler ve yazılım dahil ancak bunlarla sınırlı olmamak üzere, e-lection\'a veya lisans verenlerine aittir. e-lection\'ın önceden yazılı izni olmaksızın, Uygulama veya içeriğine dayalı türev eserler oluşturmamanızı kabul edersiniz.\n\n6. Garanti Reddi\n\na. Uygulama, \"olduğu gibi\" ve \"mevcut olduğu şekliyle\" sunulur, herhangi bir türdeki, açık veya zımni tüm garantiler dahil olmak üzere, hiçbir garantinin olmadığı bir temelde sunulur. e-lection, ticari amaç için uygunluk, belirli bir amaca uygunluk ve ihlal etmeme konusundaki zımni garantiler de dahil olmak üzere, tüm garantileri reddeder.\n\n7. Sorumluluk Sınırlaması\n\na. Hiçbir durumda e-lection, Uygulama\'nın kullanımından kaynaklanan veya Uygulama\'nın kullanımının imkansızlaşmasından kaynaklanan dolaylı, arızi, özel, sonuçsal veya cezai zararlardan sorumlu değildir, karlılık kaybı, veri veya iyi niyet kaybı dahil ancak bunlarla sınırlı olmamak üzere.\n\n8. Yürürlükteki Hukuk\n\na. Bu Koşullar, Sizin yargı alanınız yasalarına uygun olarak yürürlüğe konulacak ve yorumlanacaktır, çelişme hükümleri olmaksızın.\n\n9. Koşulların Değiştirilmesi\n\na. e-lection, bu Koşulları önceden bildirim yapmaksızın herhangi bir zamanda değiştirme hakkını saklı tutar. Bu Koşullardaki değişikliklerin yayınlanmasını takiben Uygulama\'nın kullanımınız, bu değişiklikleri kabul ettiğiniz anlamına gelir.\n\n10. Bizimle İletişime Geçin\n\na. Bu Koşullar veya Uygulama ile ilgili herhangi bir sorunuz veya endişeniz varsa, lütfen bizimle şu adresten iletişime geçin: support@e-lection.com.\n\n\"Kabul Ediyorum\" düğmesini tıklayarak veya Uygulamaya erişerek veya kullanarak, bu Kullanım Koşulları ve Kullanıcı Onayını okuduğunuzu, anladığınızı ve bağlı olmayı kabul ettiğinizi beyan edersiniz.',
    },
    'w98qqch0': {
      'en': 'Back',
      'tr': 'Geri',
    },
  },
  // ElectionEmptyCustom
  {
    'sgqa1et2': {
      'en': 'You\'re All Caught Up For Now',
      'tr': 'Şu Anlık Her Şey Tamam',
    },
    'nmesbi47': {
      'en':
          'There are no ongoing custom election \nleft that you did not participated.\nPlease check later.',
      'tr':
          'Katılmamış oldunuz devam eden bir \nseçim yok.\nDaha sonra tekrar kontol ediniz.',
    },
  },
  // ElectionEmptyRegional
  {
    'tu2k7nv8': {
      'en': 'You\'re All Caught Up For Now',
      'tr': 'Şu Anlık Her Şey Tamam',
    },
    '2qfzhpj7': {
      'en':
          'There are no ongoing regional election \nleft that you did not participated.\nPlease check later.',
      'tr':
          'Katılmamış oldunuz devam eden bir \nseçim yok.\nDaha sonra tekrar kontol ediniz.',
    },
  },
  // Miscellaneous
  {
    '1p1hlrf3': {
      'en': '',
      'tr': '',
    },
    'm1l5m469': {
      'en': '',
      'tr': '',
    },
    '4j8t1bl1': {
      'en': '',
      'tr': 'Oylama işleminden önce lütfen kendinizi doğrulayın.',
    },
    'fdb0u31s': {
      'en': '',
      'tr': '',
    },
    's13lc7k6': {
      'en': '',
      'tr': '',
    },
    'x1nyxsye': {
      'en': '',
      'tr': '',
    },
    'qmhclriw': {
      'en': '',
      'tr': '',
    },
    'iotr0dm1': {
      'en': '',
      'tr': '',
    },
    'hrerqi3p': {
      'en': '',
      'tr': '',
    },
    'hj725z9a': {
      'en': '',
      'tr': '',
    },
    'w9jhckif': {
      'en': '',
      'tr': '',
    },
    'dhqu2m16': {
      'en': '',
      'tr': '',
    },
    'zrt8gl9y': {
      'en': '',
      'tr': '',
    },
    '50vfu2rs': {
      'en': '',
      'tr': '',
    },
    'fde1m81z': {
      'en': '',
      'tr': '',
    },
    'puh6by9g': {
      'en': '',
      'tr': '',
    },
    'axv57qgg': {
      'en': '',
      'tr': '',
    },
    '4z0j8gsp': {
      'en': '',
      'tr': '',
    },
    'hqhy12xr': {
      'en': '',
      'tr': '',
    },
    'rx2gyo4d': {
      'en': '',
      'tr': '',
    },
    'kbaiqufu': {
      'en': '',
      'tr': '',
    },
    'muorul8r': {
      'en': '',
      'tr': '',
    },
    'd1zshzf9': {
      'en': '',
      'tr': '',
    },
    't9h6cxqc': {
      'en': '',
      'tr': '',
    },
    'vzms6ce4': {
      'en': '',
      'tr': '',
    },
    '39eqtb8v': {
      'en': '',
      'tr': '',
    },
    'wu7l9z7f': {
      'en': '',
      'tr': '',
    },
    'qoqu9kr4': {
      'en': '',
      'tr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
