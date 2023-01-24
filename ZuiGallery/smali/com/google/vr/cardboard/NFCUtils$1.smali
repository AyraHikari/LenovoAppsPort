.class Lcom/google/vr/cardboard/NFCUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "NFCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/NFCUtils;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/NFCUtils;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/NFCUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/google/vr/cardboard/NFCUtils$1;->this$0:Lcom/google/vr/cardboard/NFCUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/google/vr/cardboard/NFCUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Got an NFC tag!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/google/vr/cardboard/NFCUtils$1;->this$0:Lcom/google/vr/cardboard/NFCUtils;

    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/nfc/Tag;

    invoke-virtual {p1, p2}, Lcom/google/vr/cardboard/NFCUtils;->onNFCTagDetected(Landroid/nfc/Tag;)V

    return-void
.end method
