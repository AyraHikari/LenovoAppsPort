.class Lcom/zui/gallery/app/GalleryActivity$10;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/GalleryActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity;)V
    .locals 0

    .line 1377
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$10;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1380
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$10;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->isSecureCameraCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$10;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1382
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1383
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1384
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1385
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
