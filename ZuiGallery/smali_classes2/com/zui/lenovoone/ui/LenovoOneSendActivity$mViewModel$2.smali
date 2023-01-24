.class final Lcom/zui/lenovoone/ui/LenovoOneSendActivity$mViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LenovoOneSendActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/lenovoone/ui/LenovoOneSendActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;",
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
.field final synthetic this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;


# direct methods
.method constructor <init>(Lcom/zui/lenovoone/ui/LenovoOneSendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$mViewModel$2;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;
    .locals 6

    .line 14
    new-instance v0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;

    .line 15
    iget-object v1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$mViewModel$2;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;

    invoke-virtual {v1}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zui/lenovoone/ui/tool/LenovoOneUIUtil;->extras(Landroid/content/Intent;)Lcom/zui/lenovoone/ui/tool/Extras;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$mViewModel$2;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;

    invoke-virtual {v2}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v3, Lcom/zui/lenovoone/ui/LenovoOneSendSound;

    iget-object v4, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$mViewModel$2;->this$0:Lcom/zui/lenovoone/ui/LenovoOneSendActivity;

    invoke-virtual {v4}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "application"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/zui/lenovoone/ui/LenovoOneSendSound;-><init>(Landroid/app/Application;)V

    .line 18
    new-instance v4, Lcom/zui/lenovoone/ui/LenovoOneSendAnim;

    invoke-direct {v4}, Lcom/zui/lenovoone/ui/LenovoOneSendAnim;-><init>()V

    .line 14
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;-><init>(Lcom/zui/lenovoone/ui/tool/Extras;Landroid/content/res/Resources;Lcom/zui/lenovoone/ui/LenovoOneSendSound;Lcom/zui/lenovoone/ui/LenovoOneSendAnim;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$mViewModel$2;->invoke()Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;

    move-result-object v0

    return-object v0
.end method
