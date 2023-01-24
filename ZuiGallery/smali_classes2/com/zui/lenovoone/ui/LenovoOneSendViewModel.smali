.class public final Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LenovoOneSendViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLenovoOneSendViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LenovoOneSendViewModel.kt\ncom/zui/lenovoone/ui/LenovoOneSendViewModel\n*L\n1#1,70:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0019\u001a\u00020\u001aH\u0014R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "mExtras",
        "Lcom/zui/lenovoone/ui/tool/Extras;",
        "mResources",
        "Landroid/content/res/Resources;",
        "mLenovoOneSendSound",
        "Lcom/zui/lenovoone/ui/LenovoOneSendSound;",
        "mLenovoOneSendAnim",
        "Lcom/zui/lenovoone/ui/LenovoOneSendAnim;",
        "(Lcom/zui/lenovoone/ui/tool/Extras;Landroid/content/res/Resources;Lcom/zui/lenovoone/ui/LenovoOneSendSound;Lcom/zui/lenovoone/ui/LenovoOneSendAnim;)V",
        "_animProgress",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "_description",
        "",
        "_name",
        "animProgress",
        "Landroidx/lifecycle/LiveData;",
        "getAnimProgress",
        "()Landroidx/lifecycle/LiveData;",
        "description",
        "getDescription",
        "name",
        "getName",
        "onCleared",
        "",
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
.field private final _animProgress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final _description:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _name:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Lcom/zui/lenovoone/ui/tool/Extras;

.field private final mLenovoOneSendAnim:Lcom/zui/lenovoone/ui/LenovoOneSendAnim;

.field private final mLenovoOneSendSound:Lcom/zui/lenovoone/ui/LenovoOneSendSound;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/zui/lenovoone/ui/tool/Extras;Landroid/content/res/Resources;Lcom/zui/lenovoone/ui/LenovoOneSendSound;Lcom/zui/lenovoone/ui/LenovoOneSendAnim;)V
    .locals 2

    const-string v0, "mExtras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mResources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mLenovoOneSendSound"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mLenovoOneSendAnim"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mExtras:Lcom/zui/lenovoone/ui/tool/Extras;

    iput-object p2, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mLenovoOneSendSound:Lcom/zui/lenovoone/ui/LenovoOneSendSound;

    iput-object p4, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mLenovoOneSendAnim:Lcom/zui/lenovoone/ui/LenovoOneSendAnim;

    .line 38
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->_animProgress:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->_name:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->_description:Landroidx/lifecycle/MutableLiveData;

    .line 49
    iget-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mExtras:Lcom/zui/lenovoone/ui/tool/Extras;

    invoke-virtual {p1}, Lcom/zui/lenovoone/ui/tool/Extras;->getUris()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lizheng"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->_name:Landroidx/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mExtras:Lcom/zui/lenovoone/ui/tool/Extras;

    invoke-virtual {p2}, Lcom/zui/lenovoone/ui/tool/Extras;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->_description:Landroidx/lifecycle/MutableLiveData;

    .line 52
    iget-object p2, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mResources:Landroid/content/res/Resources;

    .line 53
    sget p3, Lcom/zui/lenovoone/ui/R$string;->files_description:I

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mExtras:Lcom/zui/lenovoone/ui/tool/Extras;

    invoke-virtual {v0}, Lcom/zui/lenovoone/ui/tool/Extras;->getUris()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    aput-object v0, p4, v1

    .line 52
    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mLenovoOneSendAnim:Lcom/zui/lenovoone/ui/LenovoOneSendAnim;

    new-instance p2, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel$1;

    invoke-direct {p2, p0}, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel$1;-><init>(Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2}, Lcom/zui/lenovoone/ui/LenovoOneSendAnim;->play(Lkotlin/jvm/functions/Function1;)V

    .line 61
    iget-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mLenovoOneSendSound:Lcom/zui/lenovoone/ui/LenovoOneSendSound;

    invoke-virtual {p1}, Lcom/zui/lenovoone/ui/LenovoOneSendSound;->play()V

    return-void
.end method

.method public static final synthetic access$get_animProgress$p(Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->_animProgress:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final getAnimProgress()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->_animProgress:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getDescription()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->_description:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getName()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->_name:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 66
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mLenovoOneSendAnim:Lcom/zui/lenovoone/ui/LenovoOneSendAnim;

    invoke-virtual {v0}, Lcom/zui/lenovoone/ui/LenovoOneSendAnim;->clear()V

    .line 67
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;->mLenovoOneSendSound:Lcom/zui/lenovoone/ui/LenovoOneSendSound;

    invoke-virtual {v0}, Lcom/zui/lenovoone/ui/LenovoOneSendSound;->clear()V

    return-void
.end method
