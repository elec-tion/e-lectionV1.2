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
    '72y6svrw': {
      'en': 'Dropdown deneme',
      'tr': 'Dropdown deneme',
    },
    'wztpgkwk': {
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
    '8kwsmno5': {
      'en': 'will start at',
      'tr': '',
    },
    '78uncosr': {
      'en': '',
      'tr': '\'de başlayacak',
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
      'en': 'Create Voting',
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
    '39bjex55': {
      'en': 'Settings',
      'tr': 'Ayarlar',
    },
    '0h0880ti': {
      'en': 'Help Desk',
      'tr': 'Yardım Masası',
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
      'tr': '  Oy Ver',
    },
    'zoe9j1c7': {
      'en': ' Voting Panel',
      'tr': 'Oylama Paneli',
    },
    'k17eihfq': {
      'en': 'Create Election',
      'tr': 'Oylama Oluştur',
    },
    'jnfa6i4g': {
      'en': 'Elections',
      'tr': 'Seçimler',
    },
    'rrhf20d1': {
      'en': ' Statistics',
      'tr': 'İstatistikler',
    },
    'x5yzhokh': {
      'en': '    Help Center',
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
    'ipuuure2': {
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
  // BilgiGuncelleme
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
      'en': 'Next Upcoming Election',
      'tr': 'En Yakın Seçim:',
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
  // OyKullanP1cont
  {
    'ziklqfe3': {
      'en':
          '[Seçim İsmi...................\n.........................................]',
      'tr':
          '[Seçim İsmi...................\n.........................................]',
    },
    '47468tbq': {
      'en': 'Voting Process Has Been Started',
      'tr': 'Oylama Süreci Başladı',
    },
    'ncujr1tm': {
      'en': 'Give Vote',
      'tr': 'Oy Ver',
    },
    'wphtzlba': {
      'en': 'Voting Period Ends In:',
      'tr': 'Oylama Sürecinin Bitmesine:',
    },
    'qzn89q4e': {
      'en': '... hour ... minutes',
      'tr': '... saat ... dakika',
    },
    '29od8yd5': {
      'en': 'Candidates',
      'tr': '    Adaylar',
    },
    'ny4km4fn': {
      'en': 'Statistics',
      'tr': 'İstatistikler',
    },
    'pbd15a4s': {
      'en': 'Election Description',
      'tr': 'Seçim Açıklaması',
    },
    'jfebbw08': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'm9sv8hni': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP1given
  {
    'nbjvljwq': {
      'en':
          '[Seçim İsmi...................\n.........................................]',
      'tr':
          '[Seçim İsmi...................\n.........................................]',
    },
    'vsphu6vk': {
      'en': 'Voting Results Will Be Announced Soon.',
      'tr': 'Sonuçlar Yakında Açıklanacak',
    },
    'jhsk1m9m': {
      'en': 'Your Vote\nHas Saved',
      'tr': 'Oyunuz\nKaydedildi.',
    },
    '8s17gyvu': {
      'en': 'Until the results are announced:',
      'tr': 'Sonuçların Açıklanmasına Kalan:',
    },
    '61r1g9ei': {
      'en': '... hour ... minutes',
      'tr': '... saat ... dakika',
    },
    'b57mpkhq': {
      'en': 'Candidates',
      'tr': '    Adaylar',
    },
    'i651fkwo': {
      'en': 'Statistics',
      'tr': 'İstatistikler',
    },
    '76ootj8k': {
      'en': 'Election Description',
      'tr': 'Seçim Açıklaması',
    },
    'n1ayowly': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    '03pqsyl9': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP1res
  {
    'khnn4xmg': {
      'en':
          '[Seçim İsmi...................\n.........................................]',
      'tr':
          '[Seçim İsmi...................\n.........................................]',
    },
    'i5frs9b6': {
      'en': 'Voting Results Has Been Announced.',
      'tr': 'Oylama Sonuçları Açıklandı.',
    },
    'gncf0l5j': {
      'en': 'View Results',
      'tr': 'Sonuçları\nGörüntüle',
    },
    '3ne918zn': {
      'en': 'Number of Valid Votes:',
      'tr': 'Geçerli Oy Sayısı:',
    },
    '2payexl4': {
      'en': '[vote_num]',
      'tr': '123',
    },
    '1ov490y3': {
      'en': 'Candidates',
      'tr': '   Adaylar',
    },
    'r1yo0ofp': {
      'en': 'Statistics',
      'tr': 'İstatistikler',
    },
    'sh66en2p': {
      'en': 'Election Description',
      'tr': 'Seçim Açıklaması',
    },
    'gdlbxrc3': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'pbfpjpfk': {
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
      'en': 'Voting Supervisor',
      'tr': 'Seçim Sorumlusu',
    },
    'g1wvmjrl': {
      'en': '[Sorumlu İsmi]',
      'tr': '[Sorumlu İsmi]',
    },
    'ca8vhzio': {
      'en':
          'All voters must carefully read \nand acknowledge the following \nwarnings.\n\n1. DO NOT exceed voting time limit or\n   your vote may invalidated by your\n   committee\n\n2. e-lection is not responsible for any \n   problems that may occur in the \n   voting process and/or results.\n\n3. No changes can be made about \n    the voting after the voting process.\n\n3. By clicking \"Next\" you \nAccept the e-lection\nTerms of Use and User Consent form.',
      'tr':
          'Bütün adaylar aşağıdaki\n uyarıları dikkatlice okuyup onaylamalıdır.\n\n1. Oylama İşlemlerinde ve/veya\n sonuçlarında yaşanabilecek\n aksaklıklardan e-lection \nsorumlu değildir.\n\n2. Oy kullanma işlemi \nsonrasında oylama hakkında \ndeğişiklik yapılamaz.\n\n3. İleri tuşuna bastığınız zaman\ne-lection Kullanım Şartlarını onaylamış\nolursunuz.',
    },
    '98d1vdjn': {
      'en':
          'I confirm that I have carefully \nread and understood the warnings',
      'tr': 'Uyarıları dikkatlice okuduğumu ve \nanladığımı onaylıyorum',
    },
    '1c77iiss': {
      'en': 'Continue',
      'tr': 'İlerle',
    },
    'dh9ibcj6': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP3devam
  {
    'bqkir6j6': {
      'en': '[Seçim İsmi]\n...........................',
      'tr': '[Seçim İsmi]\n...........................',
    },
    '7exdsjni': {
      'en': 'Attention',
      'tr': 'Dikkat',
    },
    'nevybw4m': {
      'en':
          'If you proceed to the next page,\n you will reach the \nvoting screen.\n\nWhen you reach the voting screen,\n if you exit the screen in any way,\n your vote will be  invalidated.\n',
      'tr':
          'Bir sonraki sayfaya ilerlediğinizde\n oy kullanma ekranına \nulaşacaksınız.\n\nOy kullanma ekranına \nulaştığınızda herhangi bir \nşekilde ekrandan çıkış yapılması\ndurumunda oyunuz geçersiz sayılacaktır.',
    },
    'rknpp0py': {
      'en':
          'If you believe you have reached this screen \nby mistake, please go back.\n',
      'tr':
          'Bu ekrana yanlışlıkla \ngeldiğinizi düşünüyorsanız, \nlütfen geri dönünüz.',
    },
    'ff8xsg3s': {
      'en': 'Back',
      'tr': 'Geri',
    },
    'arkpjqzy': {
      'en': 'Next',
      'tr': 'İleri',
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
    'vkv9t265': {
      'en': 'To ****: 27 hours.',
      'tr': '**** adlı seçime: 27 saat.',
    },
    'kmszbpwf': {
      'en': 'Votes I Created',
      'tr': 'Oluşturduğum Oylamalar',
    },
    'f7lal1zo': {
      'en': 'Republic of Mozambique Municipal Election 2024',
      'tr': 'Mozambik Cumhuriyeti Belediye Seçimi 2024',
    },
    'e7odf2qy': {
      'en': 'Results will be announced in 2 hours',
      'tr': 'Sonuçlar 2 saat içinde açıklanacak',
    },
    'tg5053i6': {
      'en': 'Voting Statistics',
      'tr': 'Oylama İstatistikleri',
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
  // OylamaOlusturP4
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
      'en': 'Voting Panel',
      'tr': 'Oylama Paneli',
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
    '921a7izv': {
      'en': 'Search Election',
      'tr': 'TC Kimlik Numarası',
    },
    'v1fqhy0x': {
      'en': 'To ****: 9 days, 27 hours.',
      'tr': '**** adlı seçime: 9 gün, 27 saat.',
    },
    's692ylzb': {
      'en': 'Voting Panel',
      'tr': 'Oylama Paneli',
    },
    'oyuux3d8': {
      'en': 'Voting Panel',
      'tr': 'Oylama Paneli',
    },
    '4p614ajp': {
      'en': 'Not Started',
      'tr': 'Başlamamış',
    },
    '0xyroz08': {
      'en': 'Start date & time:',
      'tr': 'Başlangıç tarihi ve saati:',
    },
    'grxn9zuw': {
      'en': 'Started',
      'tr': 'Başlamış',
    },
    'qv9poii3': {
      'en': 'End date & time:',
      'tr': 'Bitiş tarihi ve saati:',
    },
    '4cuqay50': {
      'en': 'Finished',
      'tr': 'Bitmiş',
    },
    'ghgajwdv': {
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
    'a6et2c9u': {
      'en': '[Seçim İsmi]\n...........................',
      'tr': '[Seçim İsmi]\n...........................',
    },
    'rf3eqp4w': {
      'en': 'Electronic Voting Ballot',
      'tr': 'Elektronik Oy Pusulası',
    },
    'vup09jh4': {
      'en': '[candidate_name]',
      'tr': '',
    },
    '3tno19fg': {
      'en': 'organization',
      'tr': 'parti',
    },
    'vegfkuau': {
      'en': '[candidate_name]',
      'tr': '',
    },
    'gy3jejn5': {
      'en': 'organization',
      'tr': 'parti',
    },
    'j5pq7lut': {
      'en': '[candidate_name]',
      'tr': '',
    },
    'd7can56m': {
      'en': 'organization',
      'tr': 'parti',
    },
    'ljuzmg92': {
      'en': '[candidate_name]',
      'tr': '',
    },
    '16l3cuez': {
      'en': 'organization',
      'tr': 'parti',
    },
    'otrr9g42': {
      'en': '[candidate_name]',
      'tr': '',
    },
    '97cc8fwh': {
      'en': 'organization',
      'tr': 'parti',
    },
    'xyei4nnw': {
      'en': 'Next',
      'tr': 'İleri',
    },
    'z03xgff0': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP5Pusula
  {
    '713167re': {
      'en': '[Seçim İsmi]\n...........................',
      'tr': '[Seçim İsmi]\n...........................',
    },
    'hc0zqdoy': {
      'en': 'Voter Information',
      'tr': 'Oy Kullanan Bilgileri',
    },
    'jxkidt9r': {
      'en': 'user_name',
      'tr': 'user_name',
    },
    'sqkn0y7o': {
      'en': 'user_surname',
      'tr': 'user_surname',
    },
    'lkfx1s5k': {
      'en': 'National ID Number',
      'tr': 'TC Kimlik No',
    },
    'd91x5j5u': {
      'en': 'user_idnum',
      'tr': 'user_idnum',
    },
    '4vk0vjpg': {
      'en': 'The Candidate You Vote For',
      'tr': 'Oy Verdiğiniz Aday',
    },
    'x8ida8n5': {
      'en': '1. Aday İsmi',
      'tr': '1. Aday İsmi',
    },
    'bygbdhqh': {
      'en': 'Parti İsmi (varsa)',
      'tr': 'Parti İsmi (varsa)',
    },
    'p4s8c5ry': {
      'en': 'Time Of Voting:',
      'tr': 'Time Of Voting:',
    },
    'y4l1raqi': {
      'en': 'Back',
      'tr': 'Geri',
    },
    '4y3t3t0g': {
      'en': 'Give Vote',
      'tr': 'Oy Ver',
    },
    'uwubt0r1': {
      'en':
          'I confirm this information and confirm that my vote may be invalidated in case of incorrect information.',
      'tr':
          'Yukarıdaki bilgilerin doğruluğunu onaylayıp, yanlış bir bilgi olması durumunda oyumun geçersiz sayılabileceğini onaylıyorum.',
    },
    'ocv84efz': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OyKullanP6Final
  {
    'zwx1l7zk': {
      'en': '[Seçim İsmi]\n...........................',
      'tr': '[Seçim İsmi]\n...........................',
    },
    'm59xgfdw': {
      'en': 'Voting Complete',
      'tr': 'Oylama Tamamlandı',
    },
    'k3syc47n': {
      'en':
          'Congratulations!\n\nYour vote has been\n successfully registered.\n\nYou can follow the election\n results from  the Results Screen\n on Mobile or Web.',
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
  // OyKullanP1notstarted
  {
    'ib9lcc1k': {
      'en': 'Voting Has Not Started Yet.',
      'tr': 'Oylama İşlemi Başlamadı',
    },
    'nsg4upd9': {
      'en': 'Voting Has\nNot Started',
      'tr': 'Oylama\nBaşlamadı',
    },
    'uj0l5ovf': {
      'en': 'Until voting will start:',
      'tr': 'Oylamanın Başlamasına Kalan:',
    },
    '0bnkw5ty': {
      'en': '... hour ... minutes',
      'tr': '... saat ... dakika',
    },
    'v4lwgql8': {
      'en': 'Candidates',
      'tr': '    Adaylar',
    },
    '8i85u445': {
      'en': 'Statistics',
      'tr': 'İstatistikler',
    },
    'mofwsnnf': {
      'en': 'Election Description',
      'tr': 'Seçim Açıklaması',
    },
    '84sn29h7': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'kcuv9x2d': {
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
      'en': 'How Voting Works',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'bh30p9wp': {
      'en':
          'In this quick tutorial you will find\nvarious information about\nvoting process in e-lection.',
      'tr':
          'Bu kısa eğitimde e-lection\nuygulaması üzerinden\noy kullanma süreci ile\nalakalı bilgiler bulacaksınız.',
    },
    'ffm861c7': {
      'en':
          '\nVoting on e-lection is easy.\nFirstly let\'s proceed with finding\na election.',
      'tr':
          '\nE-lection ile oy kullanmak basittir.\nÖncelikle aradığınız seçimi\nbulmak ile başlayalım.',
    },
    'td2ahgq6': {
      'en': 'Next',
      'tr': 'İleri',
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
          'Firstly, click on \"Voting\" tab on \"Menu\".\nClick \"Give Vote\" button.\n Then find and click\n\"My next upcoming election\" \nor you can simply seach any election\nwith search bar.\n',
      'tr':
          'İlk olarak, \"Menü\" üzerindeki \n\"Oylama\" sekmesine tıklayın.\n\"Oy Ver\" butonuna tıklayın.\n Sonra \"Bir sonraki seçimim\" \nyazısını bulun.\nYa da basitçe arama çubuğu ile\nherhangi bir seçimi arayabilirsiniz',
    },
    '4y4ty8b1': {
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
    'h1smmr9c': {
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
    'nf0mwjha': {
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
          'In the above you can see a example\nballot.\nSimply tap on the circle next\nto your desired candidate.\nRemember to check your timer\nlocated right above the ballot.\nThen tap to \"Next\" after.',
      'tr':
          'Yukarıdaki resimde örnek bir oy \npusulası görebilirsiniz.\nİstediğiniz adayın yanındaki \ndaireye dokunmanız yeterlidir.\nArdından \"İleri\" seçeneğine dokunun.',
    },
    '03r9gc70': {
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
      'en': 'Remember you CAN NOT change\nyour vote after clicking.',
      'tr': 'Tıkladıktan sonra oyunuzu\n değiştiremeyeceğinizi unutmayın.',
    },
    'ai5qxrcf': {
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
    'dljpmc2d': {
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
    'nojbqh5c': {
      'en': 'We\'re here to help.\nYou can contact us anytime you need.',
      'tr':
          'Yardımcı olmak için buradayız.\nİstediğiniz zaman bize ulaşabilirsiniz',
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
          'Adress: Kızılcaşar Mahallesi, 1184. Cad No:13, 06830 İncek, Gölbaşı - Ankara - Türkiye\n\n\nPhone:  +90 (312) 586 80 00 Pbx\n\n\nMail:  support@e-lection.com',
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
      'en': '- Ongoing Election -',
      'tr': '- Devam Eden Oylama İşlemi -',
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
    'g28qipnc': {
      'en': 'Return To Ballot',
      'tr': 'Seçime Geri Dön',
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
    'iakns8qn': {
      'en': 'ID Number:',
      'tr': 'TC Kimlik No:',
    },
    'sle7jumd': {
      'en': 'Please enter your new password.',
      'tr': 'Lütfen yeni şifrenizi girin.',
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
      'en': 'Candidates',
      'tr': 'Adaylar',
    },
    'kyta2qrw': {
      'en': '[Seçim adı]',
      'tr': '[Seçim adı]',
    },
    'zu7darch': {
      'en': 'Voting Supervisor',
      'tr': 'Seçim Sorumlusu',
    },
    'h6dz1wwc': {
      'en': '[Sorumlu İsmi]',
      'tr': '[Sorumlu İsmi]',
    },
    'u3cw7es0': {
      'en': 'Next',
      'tr': 'İlerle',
    },
    't2p4arx2': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // OylamaAcklamasi
  {
    '3zx346i1': {
      'en': 'Election Description',
      'tr': 'Oylama Açıklaması',
    },
    '9s2ujfzn': {
      'en': '[Seçim adı]',
      'tr': '[Seçim adı]',
    },
    'n6mzyogs': {
      'en': 'Voting Supervisor',
      'tr': 'Seçim Sorumlusu',
    },
    '1xfpluk2': {
      'en': '[Sorumlu İsmi]',
      'tr': '[Sorumlu İsmi]',
    },
    '6gaasz1o': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris turpis metus, dapibus ut rutrum non, egestas at magna. Nulla efficitur leo ac accumsan pellentesque. Ut ultricies est interdum lorem viverra sagittis. Maecenas eget risus nisi. Morbi vestibulum imperdiet sem, viverra vestibulum urna mattis at. In congue suscipit maximus. Suspendisse sed ex vel purus pulvinar scelerisque. Nam magna libero, consequat eu augue quis, maximus varius elit. Fusce eu odio nec purus hendrerit suscipit sit amet vulputate arcu.\n\nMauris pulvinar commodo massa eget cursus. Sed vitae aliquam diam, vitae sodales lorem. Quisque mattis odio ac aliquam tempus. Aenean faucibus felis odio, in blandit elit ultrices at. Nunc quis viverra erat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis ut neque ac velit blandit auctor. Donec a dolor eu dolor porta dignissim vel at augue. Maecenas in imperdiet enim. Praesent enim justo, suscipit ac nisl eu, porttitor ultrices ante. Curabitur ac sem sed elit accumsan fringilla. Aliquam hendrerit eu sem non molestie. Nunc eu lacus felis. Nam et erat purus. Mauris lobortis eros et dolor lacinia semper.\n\nSed ut lacinia magna. Mauris egestas ante quis sapien elementum, eget pretium leo laoreet. Cras a dui eget nulla sagittis luctus. Integer aliquet justo ut ante gravida pretium. Proin condimentum nec metus sit amet bibendum. Morbi tincidunt vestibulum eros, tristique faucibus eros consequat in. In non mi et neque sollicitudin pharetra. Nam volutpat purus ac metus sodales, ut fringilla nunc dapibus. Sed sollicitudin lectus ex, non iaculis sem consequat sed. Nunc vitae nisl vel eros varius semper ut sed quam. Sed non vulputate sapien, vitae vestibulum arcu. Nam quis nisl quis felis maximus mattis. Donec aliquet sem elit, id varius mi porta id. Mauris sit amet malesuada tellus. Nam elementum sed nunc non ullamcorper.\n\nDonec fringilla nunc dapibus tortor rutrum, nec pretium lorem tempus. Proin laoreet neque nisl, sed maximus lacus accumsan at. Ut lacinia tortor enim, nec porttitor augue mollis pulvinar. Aenean elementum vehicula enim. Quisque eu ligula porttitor justo consectetur suscipit a ac nulla. Curabitur sollicitudin sed sem sit amet luctus. Cras et nulla nec magna mollis aliquet dictum a dui. Vivamus risus velit, pulvinar sit amet blandit eu, facilisis vitae tellus. Vestibulum in ipsum id augue fringilla malesuada vel eget velit.\n\nQuisque accumsan odio orci, vitae suscipit ex cursus sollicitudin. Quisque dictum elit ut vulputate tristique. Nam quis euismod magna, nec semper nibh. Pellentesque erat enim, ullamcorper et tortor a, laoreet luctus enim. Mauris augue augue, placerat id ante quis, tempus rutrum velit. Praesent molestie orci velit, nec faucibus leo accumsan sit amet. Nam ac mattis ligula.',
      'tr':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris turpis metus, dapibus ut rutrum non, egestas at magna. Nulla efficitur leo ac accumsan pellentesque. Ut ultricies est interdum lorem viverra sagittis. Maecenas eget risus nisi. Morbi vestibulum imperdiet sem, viverra vestibulum urna mattis at. In congue suscipit maximus. Suspendisse sed ex vel purus pulvinar scelerisque. Nam magna libero, consequat eu augue quis, maximus varius elit. Fusce eu odio nec purus hendrerit suscipit sit amet vulputate arcu.\n\nMauris pulvinar commodo massa eget cursus. Sed vitae aliquam diam, vitae sodales lorem. Quisque mattis odio ac aliquam tempus. Aenean faucibus felis odio, in blandit elit ultrices at. Nunc quis viverra erat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis ut neque ac velit blandit auctor. Donec a dolor eu dolor porta dignissim vel at augue. Maecenas in imperdiet enim. Praesent enim justo, suscipit ac nisl eu, porttitor ultrices ante. Curabitur ac sem sed elit accumsan fringilla. Aliquam hendrerit eu sem non molestie. Nunc eu lacus felis. Nam et erat purus. Mauris lobortis eros et dolor lacinia semper.\n\nSed ut lacinia magna. Mauris egestas ante quis sapien elementum, eget pretium leo laoreet. Cras a dui eget nulla sagittis luctus. Integer aliquet justo ut ante gravida pretium. Proin condimentum nec metus sit amet bibendum. Morbi tincidunt vestibulum eros, tristique faucibus eros consequat in. In non mi et neque sollicitudin pharetra. Nam volutpat purus ac metus sodales, ut fringilla nunc dapibus. Sed sollicitudin lectus ex, non iaculis sem consequat sed. Nunc vitae nisl vel eros varius semper ut sed quam. Sed non vulputate sapien, vitae vestibulum arcu. Nam quis nisl quis felis maximus mattis. Donec aliquet sem elit, id varius mi porta id. Mauris sit amet malesuada tellus. Nam elementum sed nunc non ullamcorper.\n\nDonec fringilla nunc dapibus tortor rutrum, nec pretium lorem tempus. Proin laoreet neque nisl, sed maximus lacus accumsan at. Ut lacinia tortor enim, nec porttitor augue mollis pulvinar. Aenean elementum vehicula enim. Quisque eu ligula porttitor justo consectetur suscipit a ac nulla. Curabitur sollicitudin sed sem sit amet luctus. Cras et nulla nec magna mollis aliquet dictum a dui. Vivamus risus velit, pulvinar sit amet blandit eu, facilisis vitae tellus. Vestibulum in ipsum id augue fringilla malesuada vel eget velit.\n\nQuisque accumsan odio orci, vitae suscipit ex cursus sollicitudin. Quisque dictum elit ut vulputate tristique. Nam quis euismod magna, nec semper nibh. Pellentesque erat enim, ullamcorper et tortor a, laoreet luctus enim. Mauris augue augue, placerat id ante quis, tempus rutrum velit. Praesent molestie orci velit, nec faucibus leo accumsan sit amet. Nam ac mattis ligula.',
    },
    'vin2wnws': {
      'en': 'Next',
      'tr': 'İlerle',
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
      'tr': 'Oylama Açıklaması',
    },
    'zd9q9k6i': {
      'en':
          'Terms of Use and User Consent\n\n1. Introduction\n\nWelcome to e-lection, the blockchain-integrated voting application (\"App\"). By accessing or using the App, you agree to comply with and be bound by these Terms of Use (\"Terms\"). These Terms govern your access to and use of the App, including any content, functionality, and services offered through the App.\n\n2. User Registration\n\na. In order to use certain features of the App, you may be required to register and create an account. You agree to provide accurate, current, and complete information during the registration process.\n\nb. You are solely responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You agree to notify us immediately of any unauthorized use of your account or any other breach of security.\n\n3. User Consent\n\na. By using the App, you consent to the collection, processing, and storage of your personal data, including but not limited to your name, email address, voting preferences, and any other information provided by you during registration or while using the App.\n\nb. You understand and agree that e-lection may collect, process, and use your voting data for commercial purposes, including but not limited to research, analysis, and marketing.\n\n4. Use of Blockchain Technology\n\na. The App utilizes blockchain technology to ensure the security, transparency, and immutability of voting data. By using the App, you consent to the use of blockchain technology for these purposes.\n\n5. Intellectual Property\n\na. All intellectual property rights in the App and its content, including but not limited to text, graphics, logos, images, and software, are owned by e-lection or its licensors. You agree not to reproduce, distribute, or create derivative works based on the App or its content without prior written consent from e-lection.\n\n6. Disclaimer of Warranties\n\na. The App is provided on an \"as is\" and \"as available\" basis, without any warranties of any kind, either express or implied. e-lection disclaims all warranties, including but not limited to the implied warranties of merchantability, fitness for a particular purpose, and non-infringement.\n\n7. Limitation of Liability\n\na. In no event shall e-lection be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to loss of profits, data, or goodwill, arising out of or in connection with the use or inability to use the App.\n\n8. Governing Law\n\na. These Terms shall be governed by and construed in accordance with the laws of [Your jurisdiction], without regard to its conflict of law principles.\n\n9. Changes to Terms\n\na. e-lection reserves the right to modify or update these Terms at any time without prior notice. Your continued use of the App following the posting of any changes to these Terms constitutes acceptance of those changes.\n\n10. Contact Us\n\na. If you have any questions or concerns about these Terms or the App, please contact us at support@e-lection.com.\n\nBy clicking \"I Agree\" or by accessing or using the App, you acknowledge that you have read, understood, and agree to be bound by these Terms of Use and User Consent.',
      'tr':
          'Kullanım Koşulları ve Kullanıcı Onayı\n\n1. Giriş\n\ne-lection\'a hoş geldiniz, blok zinciri entegreli oy verme uygulaması (\"Uygulama\"). Uygulamaya erişerek veya kullanarak, bu Kullanım Koşulları (\"Koşullar\") uyarınca uymanızı ve bağlı olmanızı kabul edersiniz. Bu Koşullar, Uygulama aracılığıyla sunulan içerik, işlevsellik ve hizmetleri de içeren erişiminizi ve Uygulama\'yı kullanımınızı yönetir.\n\n2. Kullanıcı Kaydı\n\na. Uygulamanın belirli özelliklerini kullanabilmek için kaydolmanız ve bir hesap oluşturmanız gerekebilir. Kayıt sürecinde doğru, güncel ve eksiksiz bilgi vermeyi kabul edersiniz.\n\nb. Hesap kimlik bilgilerinizin gizliliğini korumak ve hesabınız altında gerçekleşen tüm faaliyetlerden siz sorumlusunuzdur. Hesabınızın yetkisiz kullanımını veya herhangi bir güvenlik ihlalini derhal bize bildirmeyi kabul edersiniz.\n\n3. Kullanıcı Onayı\n\na. Uygulamayı kullanarak, adınız, e-posta adresiniz, oy tercihleriniz ve kayıt sırasında veya Uygulama\'yı kullanırken tarafınızdan sağlanan diğer bilgiler de dahil olmak üzere kişisel verilerinizin toplanmasına, işlenmesine ve depolanmasına onay verirsiniz.\n\nb. e-lection\'ın, ticari amaçlar da dahil olmak üzere oy verme verilerinizi toplamasına, işlemesine ve kullanmasına onay verdiğinizi anlıyor ve kabul ediyorsunuz.\n\n4. Blok Zinciri Teknolojisinin Kullanımı\n\na. Uygulama, oy verme verilerinin güvenliği, şeffaflığı ve değişmezliğini sağlamak için blok zinciri teknolojisini kullanır. Uygulamayı kullanarak, bu amaçlarla blok zinciri teknolojisinin kullanımına onay verirsiniz.\n\n5. Fikri Mülkiyet\n\na. Uygulama ve içeriğindeki tüm fikri mülkiyet hakları, metin, grafikler, logolar, görüntüler ve yazılım dahil ancak bunlarla sınırlı olmamak üzere, e-lection\'a veya lisans verenlerine aittir. e-lection\'ın önceden yazılı izni olmaksızın, Uygulama veya içeriğine dayalı türev eserler oluşturmamanızı kabul edersiniz.\n\n6. Garanti Reddi\n\na. Uygulama, \"olduğu gibi\" ve \"mevcut olduğu şekliyle\" sunulur, herhangi bir türdeki, açık veya zımni tüm garantiler dahil olmak üzere, hiçbir garantinin olmadığı bir temelde sunulur. e-lection, ticari amaç için uygunluk, belirli bir amaca uygunluk ve ihlal etmeme konusundaki zımni garantiler de dahil olmak üzere, tüm garantileri reddeder.\n\n7. Sorumluluk Sınırlaması\n\na. Hiçbir durumda e-lection, Uygulama\'nın kullanımından kaynaklanan veya Uygulama\'nın kullanımının imkansızlaşmasından kaynaklanan dolaylı, arızi, özel, sonuçsal veya cezai zararlardan sorumlu değildir, karlılık kaybı, veri veya iyi niyet kaybı dahil ancak bunlarla sınırlı olmamak üzere.\n\n8. Yürürlükteki Hukuk\n\na. Bu Koşullar, Sizin yargı alanınız yasalarına uygun olarak yürürlüğe konulacak ve yorumlanacaktır, çelişme hükümleri olmaksızın.\n\n9. Koşulların Değiştirilmesi\n\na. e-lection, bu Koşulları önceden bildirim yapmaksızın herhangi bir zamanda değiştirme hakkını saklı tutar. Bu Koşullardaki değişikliklerin yayınlanmasını takiben Uygulama\'nın kullanımınız, bu değişiklikleri kabul ettiğiniz anlamına gelir.\n\n10. Bizimle İletişime Geçin\n\na. Bu Koşullar veya Uygulama ile ilgili herhangi bir sorunuz veya endişeniz varsa, lütfen bizimle şu adresten iletişime geçin: support@e-lection.com.\n\n\"Kabul Ediyorum\" düğmesini tıklayarak veya Uygulamaya erişerek veya kullanarak, bu Kullanım Koşulları ve Kullanıcı Onayını okuduğunuzu, anladığınızı ve bağlı olmayı kabul ettiğinizi beyan edersiniz.',
    },
    'pst4u7od': {
      'en': 'Next',
      'tr': 'İlerle',
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
    'ar9i4k69': {
      'en': 'Candidates',
      'tr': 'Adaylar',
    },
    '5ucaq15w': {
      'en': '1. Işık Onkun',
      'tr': '1. Işık Onkun',
    },
    'vo7s4tu7': {
      'en': 'Party Name',
      'tr': 'Party Name',
    },
    '6jq0xspb': {
      'en': 'Add Candidate',
      'tr': 'Aday Ekle',
    },
    '1hm7ffbo': {
      'en': 'Election Committee Members',
      'tr': 'Oylama Sorumluları',
    },
    'hg0isp80': {
      'en': 'Add Committee Member',
      'tr': 'Sorumlu Ekle',
    },
    'gbm5vum9': {
      'en': 'Add Voter',
      'tr': 'Seçmen Ekle',
    },
    '77w8hnlu': {
      'en':
          'I agree that voting data may be processed by e-lection and used for commercial purposes.',
      'tr':
          'Oylama verilerinin e-lection tarafından işlenebileceği ve ticari amaçlar için kullanılabileceğini onaylıyorum.',
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
          'You Can Find Various Questions With Answers Below.\n\nYou can simply click the answer cards to\n show their answer.',
      'tr':
          'Çeşitli Sorular ve Cevaplarını Aşağıda Bulabilirsiniz.\n\nKartlara dokunarak cevaplarını gorebilirsiniz.',
    },
    't6b8o119': {
      'en': 'General Questions',
      'tr': 'Genel Sorular',
    },
    't8s10m1p': {
      'en': '1. What is e-lection?',
      'tr': 'e-lection nedir?',
    },
    'u9qlbgyt': {
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
          'e-lection utilizes blockchain technology, which provides security, transparency, and immutability to the voting process. Each vote is recorded as a transaction on the blockchain, making it tamper-proof and verifiable.',
      'tr':
          'e-lection, her bir oy işlemini blok zinciri teknolojisi kullanarak kaydederek güvenlik, şeffaflık ve değişmezlik sağlar. Her oy, blok zinciri üzerinde bir işlem olarak kaydedilir, bu da onu müdahale edilemez ve doğrulanabilir hale getirir.',
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
          'Yes, e-lection ensures the integrity of election results by leveraging blockchain technology, which prevents tampering or manipulation of votes. Additionally, our platform undergoes regular audits to maintain transparency and trustworthiness.',
      'tr':
          'Evet, e-lection, blok zinciri teknolojisini kullanarak seçim sonuçlarının bütünlüğünü sağlar; bu da oy kullanımını engelleyen veya manipüle eden bir sistemdir. Ayrıca, platformumuz düzenli denetimlere tabi tutularak şeffaflığı ve güvenilirliği korur.',
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
          'Your voting data may be used for commercial purposes, including research, analysis, and marketing by e-lection. However, rest assured that your personal data will be handled in accordance with our privacy policy and applicable laws.',
      'tr':
          'Oy verme verileriniz, e-lection tarafından araştırma, analiz ve pazarlama gibi ticari amaçlar için kullanılabilir. Ancak, kişisel verilerinizin gizliliği politikamız ve ilgili yasalara uygun olarak işleneceğinden emin olabilirsiniz.',
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
  // OyKullan
  {
    '0h54kruu': {
      'en': 'Voting Has Not Started Yet.',
      'tr': 'Oylama İşlemi Başlamadı',
    },
    'ca6x2p8g': {
      'en': 'Voting Has\nNot Started',
      'tr': 'Oylama\nBaşlamadı',
    },
    's8yhjjvu': {
      'en': 'Until voting will start:',
      'tr': 'Oylamanın Başlamasına Kalan:',
    },
    'jgywkzqq': {
      'en': '... hour ... minutes',
      'tr': '... saat ... dakika',
    },
    'roi906ae': {
      'en': 'Candidates',
      'tr': '    Adaylar',
    },
    'o8pnwa7h': {
      'en': 'Statistics',
      'tr': 'İstatistikler',
    },
    '1gccnyg0': {
      'en': 'Election Description',
      'tr': 'Seçim Açıklaması',
    },
    'tl3i1b2u': {
      'en': 'How voting works?',
      'tr': 'Oylama Süreci Nasıl İşliyor?',
    },
    'l0dcr5s4': {
      'en': 'Voting',
      'tr': 'Oylama',
    },
  },
  // dropdownDeneme
  {
    '10pveiu2': {
      'en': 'District\'i yicem',
      'tr': '',
    },
    'mnoqhjh1': {
      'en': 'Ülke',
      'tr': 'Ülke',
    },
    '09icxkl3': {
      'en': 'Please select...',
      'tr': '',
    },
    '2bo9xodr': {
      'en': 'Search for an item...',
      'tr': '',
    },
    'z2b0giz6': {
      'en': 'İl',
      'tr': 'İl',
    },
    'c8kirnq8': {
      'en': 'Please select...',
      'tr': '',
    },
    '6n038rnk': {
      'en': 'Search for an item...',
      'tr': '',
    },
    '1mu4g28p': {
      'en': 'İlçe',
      'tr': 'İlçe',
    },
    '3sv0gkh1': {
      'en': 'Please select...',
      'tr': '',
    },
    '4hwi01jk': {
      'en': 'Search for an item...',
      'tr': '',
    },
    'z2xb8nk4': {
      'en': 'Mahalle',
      'tr': 'Mahalle',
    },
    '5gme7tpn': {
      'en': 'Option 1',
      'tr': '',
    },
    '1iqatnfw': {
      'en': 'Please select...',
      'tr': '',
    },
    'v0mkx94z': {
      'en': 'Search for an item...',
      'tr': '',
    },
    'wjo5edwk': {
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
  // Miscellaneous
  {
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
