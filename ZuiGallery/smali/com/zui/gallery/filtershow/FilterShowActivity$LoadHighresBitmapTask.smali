.class Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;
.super Landroid/os/AsyncTask;
.source "FilterShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadHighresBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 1901
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/FilterShowActivity$1;)V
    .locals 0

    .line 1901
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 1904
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    .line 1905
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    .line 1906
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->supportsHighRes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1920
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setOriginalBitmapHighres(Landroid/graphics/Bitmap;)V

    .line 1921
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->setOriginalBitmapHighres(Landroid/graphics/Bitmap;)V

    .line 1923
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->warnListeners()V

    :cond_0
    const/4 p1, 0x1

    .line 1925
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1901
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 1930
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapHighres()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1932
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 1933
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 1934
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->setHighresPreviewScaleFactor(F)V

    .line 1936
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->warnListeners()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1901
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
