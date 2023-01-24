.class public final synthetic Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/banner/PlayerControl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/banner/PlayerControl;ZLandroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;->f$0:Lcom/zui/gallery/banner/PlayerControl;

    iput-boolean p2, p0, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;->f$1:Z

    iput-object p3, p0, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;->f$0:Lcom/zui/gallery/banner/PlayerControl;

    iget-boolean v1, p0, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;->f$1:Z

    iget-object v2, p0, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;->f$2:Landroid/view/View;

    iget-object v3, p0, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;->f$3:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/zui/gallery/banner/PlayerControl;->lambda$startShowOrHideAnimation$1$PlayerControl(ZLandroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
