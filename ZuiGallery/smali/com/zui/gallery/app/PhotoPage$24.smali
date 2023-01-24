.class Lcom/zui/gallery/app/PhotoPage$24;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 5002
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$24;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 3

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    .line 5006
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$24;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPage;->getCurrentMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5009
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 5010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nfc uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoPage"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aput-object v0, p1, v1

    :cond_0
    return-object p1
.end method
