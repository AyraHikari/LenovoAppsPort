.class Lcom/zui/gallery/app/MicroVideoTrimActivity$1;
.super Ljava/lang/Object;
.source "MicroVideoTrimActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MicroVideoTrimActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MicroVideo"

    const-string v1, "mSurface  post"

    .line 75
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mBlackView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
