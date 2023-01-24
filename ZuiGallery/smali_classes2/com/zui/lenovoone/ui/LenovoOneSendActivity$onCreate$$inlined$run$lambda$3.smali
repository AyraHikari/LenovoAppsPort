.class final Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$3;
.super Lkotlin/jvm/internal/Lambda;
.source "LenovoOneSendActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "com/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$1$3"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;


# direct methods
.method constructor <init>(Lcom/zui/lenovoone/ui/LenovoOneSendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$3;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$3;->invoke(F)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(F)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$3;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;

    sget v1, Lcom/zui/lenovoone/ui/R$id;->motionLayout:I

    invoke-virtual {v0, v1}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const-string v1, "motionLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$3;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->setResult(I)V

    .line 39
    iget-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$3;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;

    invoke-virtual {p1}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->finish()V

    :cond_0
    return-void
.end method
