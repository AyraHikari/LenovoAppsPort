.class public Lcom/google/vr/cardboard/NFCUtils;
.super Ljava/lang/Object;
.source "NFCUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field nfcAdapter:Landroid/nfc/NfcAdapter;

.field nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field nfcIntentFilters:[Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/google/vr/cardboard/NFCUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/NFCUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/vr/cardboard/NFCUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createNfcIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected isNFCEnabled()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/NFCUtils;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 31
    new-instance p1, Lcom/google/vr/cardboard/NFCUtils$1;

    invoke-direct {p1, p0}, Lcom/google/vr/cardboard/NFCUtils$1;-><init>(Lcom/google/vr/cardboard/NFCUtils;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    const-string v0, "cardboard"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    const-string v1, "http"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "goo.gl"

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "google.com"

    .line 48
    invoke-virtual {v2, v1, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/cardboard/cfg.*"

    const/4 v3, 0x2

    .line 49
    invoke-virtual {v2, v1, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/content/IntentFilter;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 p1, 0x1

    aput-object v0, v1, p1

    aput-object v2, v1, v3

    .line 51
    iput-object v1, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcIntentFilters:[Landroid/content/IntentFilter;

    return-void
.end method

.method protected onNFCTagDetected(Landroid/nfc/Tag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/vr/cardboard/NFCUtils;->isNFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/google/vr/cardboard/NFCUtils;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/google/vr/cardboard/NFCUtils;->isNFCEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcIntentFilters:[Landroid/content/IntentFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
