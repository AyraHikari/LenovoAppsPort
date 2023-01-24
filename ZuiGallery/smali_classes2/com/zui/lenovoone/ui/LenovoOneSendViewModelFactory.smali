.class public final Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "LenovoOneSendViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\'\u0010\u000b\u001a\u0002H\u000c\"\n\u0008\u0000\u0010\u000c*\u0004\u0018\u00010\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000fH\u0016\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;",
        "mExtras",
        "Lcom/zui/lenovoone/ui/tool/Extras;",
        "mResources",
        "Landroid/content/res/Resources;",
        "mLenovoOneSendSound",
        "Lcom/zui/lenovoone/ui/LenovoOneSendSound;",
        "mLenovoOneSendAnim",
        "Lcom/zui/lenovoone/ui/LenovoOneSendAnim;",
        "(Lcom/zui/lenovoone/ui/tool/Extras;Landroid/content/res/Resources;Lcom/zui/lenovoone/ui/LenovoOneSendSound;Lcom/zui/lenovoone/ui/LenovoOneSendAnim;)V",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
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
.field private final mExtras:Lcom/zui/lenovoone/ui/tool/Extras;

.field private final mLenovoOneSendAnim:Lcom/zui/lenovoone/ui/LenovoOneSendAnim;

.field private final mLenovoOneSendSound:Lcom/zui/lenovoone/ui/LenovoOneSendSound;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/zui/lenovoone/ui/tool/Extras;Landroid/content/res/Resources;Lcom/zui/lenovoone/ui/LenovoOneSendSound;Lcom/zui/lenovoone/ui/LenovoOneSendAnim;)V
    .locals 1

    const-string v0, "mExtras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mResources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mLenovoOneSendSound"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mLenovoOneSendAnim"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    iput-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;->mExtras:Lcom/zui/lenovoone/ui/tool/Extras;

    iput-object p2, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;->mLenovoOneSendSound:Lcom/zui/lenovoone/ui/LenovoOneSendSound;

    iput-object p4, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;->mLenovoOneSendAnim:Lcom/zui/lenovoone/ui/LenovoOneSendAnim;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;

    .line 22
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;->mExtras:Lcom/zui/lenovoone/ui/tool/Extras;

    .line 23
    iget-object v1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;->mResources:Landroid/content/res/Resources;

    .line 24
    iget-object v2, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;->mLenovoOneSendSound:Lcom/zui/lenovoone/ui/LenovoOneSendSound;

    .line 25
    iget-object v3, p0, Lcom/zui/lenovoone/ui/LenovoOneSendViewModelFactory;->mLenovoOneSendAnim:Lcom/zui/lenovoone/ui/LenovoOneSendAnim;

    .line 21
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/zui/lenovoone/ui/LenovoOneSendViewModel;-><init>(Lcom/zui/lenovoone/ui/tool/Extras;Landroid/content/res/Resources;Lcom/zui/lenovoone/ui/LenovoOneSendSound;Lcom/zui/lenovoone/ui/LenovoOneSendAnim;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
