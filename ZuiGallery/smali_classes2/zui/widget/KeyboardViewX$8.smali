.class Lzui/widget/KeyboardViewX$8;
.super Ljava/lang/Object;
.source "KeyboardViewX.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/KeyboardViewX;->initKeyboardAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/KeyboardViewX;


# direct methods
.method constructor <init>(Lzui/widget/KeyboardViewX;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lzui/widget/KeyboardViewX$8;->this$0:Lzui/widget/KeyboardViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lzui/widget/KeyboardViewX$8;->this$0:Lzui/widget/KeyboardViewX;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lzui/widget/KeyboardViewX;->setVisibility(I)V

    return-void
.end method
