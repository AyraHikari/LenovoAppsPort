.class Lcom/zui/gallery/data/CloudImage$2;
.super Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;
.source "CloudImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/CloudImage;->fetchDetailFromCloud(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/CloudImage$onDetailLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/CloudImage;

.field final synthetic val$loadListener:Lcom/zui/gallery/data/CloudImage$onDetailLoadListener;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/data/CloudImage$onDetailLoadListener;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/zui/gallery/data/CloudImage$2;->this$0:Lcom/zui/gallery/data/CloudImage;

    iput-object p2, p0, Lcom/zui/gallery/data/CloudImage$2;->val$loadListener:Lcom/zui/gallery/data/CloudImage$onDetailLoadListener;

    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;

    move-result-object p1

    .line 517
    new-instance v0, Lcom/zui/gallery/data/MediaDetails;

    invoke-direct {v0}, Lcom/zui/gallery/data/MediaDetails;-><init>()V

    const/4 v1, 0x1

    .line 518
    iget-object v2, p0, Lcom/zui/gallery/data/CloudImage$2;->this$0:Lcom/zui/gallery/data/CloudImage;

    iget-object v2, v2, Lcom/zui/gallery/data/CloudImage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 519
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    const/4 v2, 0x3

    .line 520
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->getPhotoTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xa

    .line 521
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0x65

    .line 522
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 523
    iget-object p1, p0, Lcom/zui/gallery/data/CloudImage$2;->this$0:Lcom/zui/gallery/data/CloudImage;

    invoke-static {p1, v0}, Lcom/zui/gallery/data/CloudImage;->access$702(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/data/MediaDetails;)Lcom/zui/gallery/data/MediaDetails;

    .line 525
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/data/CloudImage$2;->val$loadListener:Lcom/zui/gallery/data/CloudImage$onDetailLoadListener;

    invoke-interface {p1}, Lcom/zui/gallery/data/CloudImage$onDetailLoadListener;->onDetailLoaded()V

    return-void
.end method
