.class public Lrx_activity_result2/RxActivityResult$Builder;
.super Ljava/lang/Object;
.source "RxActivityResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx_activity_result2/RxActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final clazz:Ljava/lang/Class;

.field final subject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lrx_activity_result2/Result<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final uiTargetActivity:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lrx_activity_result2/RxActivityResult$Builder;->subject:Lio/reactivex/subjects/PublishSubject;

    .line 60
    sget-object v0, Lrx_activity_result2/RxActivityResult;->activitiesLifecycle:Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lrx_activity_result2/RxActivityResult$Builder;->clazz:Ljava/lang/Class;

    .line 65
    instance-of p1, p1, Landroid/app/Activity;

    iput-boolean p1, p0, Lrx_activity_result2/RxActivityResult$Builder;->uiTargetActivity:Z

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call RxActivityResult.register(application) before attempting to use startIntent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onResultActivity()Lrx_activity_result2/OnResult;
    .locals 1

    .line 105
    new-instance v0, Lrx_activity_result2/RxActivityResult$Builder$2;

    invoke-direct {v0, p0}, Lrx_activity_result2/RxActivityResult$Builder$2;-><init>(Lrx_activity_result2/RxActivityResult$Builder;)V

    return-object v0
.end method

.method private onResultFragment()Lrx_activity_result2/OnResult;
    .locals 1

    .line 129
    new-instance v0, Lrx_activity_result2/RxActivityResult$Builder$3;

    invoke-direct {v0, p0}, Lrx_activity_result2/RxActivityResult$Builder$3;-><init>(Lrx_activity_result2/RxActivityResult$Builder;)V

    return-object v0
.end method

.method private startHolderActivity(Lrx_activity_result2/Request;Lrx_activity_result2/OnPreResult;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx_activity_result2/Request;",
            "Lrx_activity_result2/OnPreResult;",
            ")",
            "Lio/reactivex/Observable<",
            "Lrx_activity_result2/Result<",
            "TT;>;>;"
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lrx_activity_result2/RxActivityResult$Builder;->uiTargetActivity:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lrx_activity_result2/RxActivityResult$Builder;->onResultActivity()Lrx_activity_result2/OnResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lrx_activity_result2/RxActivityResult$Builder;->onResultFragment()Lrx_activity_result2/OnResult;

    move-result-object v0

    .line 88
    :goto_0
    invoke-virtual {p1, v0}, Lrx_activity_result2/Request;->setOnResult(Lrx_activity_result2/OnResult;)V

    .line 89
    invoke-virtual {p1, p2}, Lrx_activity_result2/Request;->setOnPreResult(Lrx_activity_result2/OnPreResult;)V

    .line 91
    invoke-static {p1}, Lrx_activity_result2/HolderActivity;->setRequest(Lrx_activity_result2/Request;)V

    .line 93
    sget-object p1, Lrx_activity_result2/RxActivityResult;->activitiesLifecycle:Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    invoke-virtual {p1}, Lrx_activity_result2/ActivitiesLifecycleCallbacks;->getOLiveActivity()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lrx_activity_result2/RxActivityResult$Builder$1;

    invoke-direct {p2, p0}, Lrx_activity_result2/RxActivityResult$Builder$1;-><init>(Lrx_activity_result2/RxActivityResult$Builder;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 101
    iget-object p1, p0, Lrx_activity_result2/RxActivityResult$Builder;->subject:Lio/reactivex/subjects/PublishSubject;

    return-object p1
.end method


# virtual methods
.method getTargetFragment(Ljava/util/List;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 161
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lrx_activity_result2/RxActivityResult$Builder;->clazz:Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_2
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 166
    invoke-virtual {p0, v1}, Lrx_activity_result2/RxActivityResult$Builder;->getTargetFragment(Ljava/util/List;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_3
    return-object v0
.end method

.method public startIntent(Landroid/content/Intent;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lrx_activity_result2/Result<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0}, Lrx_activity_result2/RxActivityResult$Builder;->startIntent(Landroid/content/Intent;Lrx_activity_result2/OnPreResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public startIntent(Landroid/content/Intent;Lrx_activity_result2/OnPreResult;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lrx_activity_result2/OnPreResult;",
            ")",
            "Lio/reactivex/Observable<",
            "Lrx_activity_result2/Result<",
            "TT;>;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lrx_activity_result2/Request;

    invoke-direct {v0, p1}, Lrx_activity_result2/Request;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, p2}, Lrx_activity_result2/RxActivityResult$Builder;->startHolderActivity(Lrx_activity_result2/Request;Lrx_activity_result2/OnPreResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentSender;",
            "Landroid/content/Intent;",
            "III)",
            "Lio/reactivex/Observable<",
            "Lrx_activity_result2/Result<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 69
    invoke-virtual/range {v0 .. v6}, Lrx_activity_result2/RxActivityResult$Builder;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentSender;",
            "Landroid/content/Intent;",
            "III",
            "Landroid/os/Bundle;",
            ")",
            "Lio/reactivex/Observable<",
            "Lrx_activity_result2/Result<",
            "TT;>;>;"
        }
    .end annotation

    .line 73
    new-instance v7, Lrx_activity_result2/RequestIntentSender;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lrx_activity_result2/RequestIntentSender;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 74
    invoke-direct {p0, v7, p1}, Lrx_activity_result2/RxActivityResult$Builder;->startHolderActivity(Lrx_activity_result2/Request;Lrx_activity_result2/OnPreResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
