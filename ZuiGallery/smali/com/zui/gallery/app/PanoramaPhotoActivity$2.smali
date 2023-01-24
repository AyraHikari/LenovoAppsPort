.class Lcom/zui/gallery/app/PanoramaPhotoActivity$2;
.super Ljava/lang/Object;
.source "PanoramaPhotoActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final synthetic this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$2;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$2;->isCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 237
    iput-boolean p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$2;->isCancel:Z

    return-void
.end method
