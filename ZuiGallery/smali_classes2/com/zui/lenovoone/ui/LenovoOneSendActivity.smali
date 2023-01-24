.class public final Lcom/zui/lenovoone/ui/LenovoOneSendActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LenovoOneSendActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLenovoOneSendActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LenovoOneSendActivity.kt\ncom/zui/lenovoone/ui/LenovoOneSendActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,45:1\n43#2,5:46\n*E\n*S KotlinDebug\n*F\n+ 1 LenovoOneSendActivity.kt\ncom/zui/lenovoone/ui/LenovoOneSendActivity\n*L\n13#1,5:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/zui/lenovoone/ui/LenovoOneSendActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "mViewModel",
        "Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;",
        "getMViewModel",
        "()Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;",
        "mViewModel$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "lenovoone-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final mViewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 13
    new-instance v0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$mViewModel$2;

    invoke-direct {v0, p0}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$mViewModel$2;-><init>(Lcom/zui/lenovoone/ui/LenovoOneSendActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 50
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$$special$$inlined$viewModels$2;

    invoke-direct {v3, p0}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$$special$$inlined$viewModels$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/Lazy;

    iput-object v1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->mViewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMViewModel()Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;
    .locals 1

    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->mViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget p1, Lcom/zui/lenovoone/ui/R$layout;->lenovo_one_sned_activity:I

    invoke-virtual {p0, p1}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;->getMViewModel()Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->getName()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$1;

    invoke-direct {v1, p0}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$1;-><init>(Lcom/zui/lenovoone/ui/LenovoOneSendActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lcom/zui/lenovoone/ui/functional/LifecycleKt;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 31
    invoke-virtual {p1}, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->getDescription()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$2;

    invoke-direct {v1, p0}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$2;-><init>(Lcom/zui/lenovoone/ui/LenovoOneSendActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lcom/zui/lenovoone/ui/functional/LifecycleKt;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 35
    invoke-virtual {p1}, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->getAnimProgress()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$3;

    invoke-direct {v0, p0}, Lcom/zui/lenovoone/ui/LenovoOneSendActivity$onCreate$$inlined$run$lambda$3;-><init>(Lcom/zui/lenovoone/ui/LenovoOneSendActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0}, Lcom/zui/lenovoone/ui/functional/LifecycleKt;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
