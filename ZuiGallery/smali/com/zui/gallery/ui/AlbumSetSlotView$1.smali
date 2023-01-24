.class Lcom/zui/gallery/ui/AlbumSetSlotView$1;
.super Ljava/lang/Object;
.source "AlbumSetSlotView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotView;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$1;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 255
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$1;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$100(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
