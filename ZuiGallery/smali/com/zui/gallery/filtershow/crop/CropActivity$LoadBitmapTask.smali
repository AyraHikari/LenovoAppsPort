.class Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/crop/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapSize:I

.field mContext:Landroid/content/Context;

.field mOrientation:I

.field mOriginalBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/crop/CropActivity;)V
    .locals 1

    .line 258
    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 259
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->access$000(Lcom/zui/gallery/filtershow/crop/CropActivity;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mBitmapSize:I

    .line 260
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mContext:Landroid/content/Context;

    .line 261
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mOriginalBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 262
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 267
    aget-object p1, p1, v0

    .line 268
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mBitmapSize:I

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2, v3, v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMetadataRotation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    invoke-static {v0, p1, v1, v2}, Lcom/zui/gallery/filtershow/crop/CropActivity;->access$100(Lcom/zui/gallery/filtershow/crop/CropActivity;Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 252
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
