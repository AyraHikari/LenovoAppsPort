.class final Lcom/zui/lenovoone/ui/LenovoOneSendViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LenovoOneSendViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;-><init>(Lcom/zui/lenovoone/ui/tool/Extras;Landroid/content/res/Resources;Lcom/zui/lenovoone/ui/LenovoOneSendSound;Lcom/zui/lenovoone/ui/LenovoOneSendAnim;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;


# direct methods
.method constructor <init>(Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel$1;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel$1;->invoke(F)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(F)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel$1;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;

    invoke-static {v0}, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->access$get_animProgress$p(Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
