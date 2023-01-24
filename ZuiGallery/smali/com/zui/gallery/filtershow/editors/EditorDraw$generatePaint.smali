.class Lcom/zui/gallery/filtershow/editors/EditorDraw$generatePaint;
.super Landroid/os/AsyncTask;
.source "EditorDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/editors/EditorDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "generatePaint"
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
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$generatePaint;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;Lcom/zui/gallery/filtershow/editors/EditorDraw$1;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw$generatePaint;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 394
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHighresImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->access$102(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 395
    invoke-static {}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->access$100()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->generateDrawPaint(Landroid/graphics/Bitmap;)Lcom/zui/gallery/ui/mosaic/CPaint;

    move-result-object p1

    sput-object p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    const/4 p1, 0x1

    .line 396
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 391
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw$generatePaint;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 391
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw$generatePaint;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
