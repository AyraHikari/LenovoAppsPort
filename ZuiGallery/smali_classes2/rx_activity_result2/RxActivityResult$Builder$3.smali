.class Lrx_activity_result2/RxActivityResult$Builder$3;
.super Ljava/lang/Object;
.source "RxActivityResult.java"

# interfaces
.implements Lrx_activity_result2/OnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx_activity_result2/RxActivityResult$Builder;->onResultFragment()Lrx_activity_result2/OnResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx_activity_result2/RxActivityResult$Builder;


# direct methods
.method constructor <init>(Lrx_activity_result2/RxActivityResult$Builder;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lrx_activity_result2/RxActivityResult$Builder$3;->this$0:Lrx_activity_result2/RxActivityResult$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lrx_activity_result2/RxActivityResult$Builder$3;->this$0:Lrx_activity_result2/RxActivityResult$Builder;

    iget-object v0, v0, Lrx_activity_result2/RxActivityResult$Builder;->subject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public response(IILandroid/content/Intent;)V
    .locals 3

    .line 132
    sget-object v0, Lrx_activity_result2/RxActivityResult;->activitiesLifecycle:Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    invoke-virtual {v0}, Lrx_activity_result2/ActivitiesLifecycleCallbacks;->getLiveActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    sget-object v0, Lrx_activity_result2/RxActivityResult;->activitiesLifecycle:Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    invoke-virtual {v0}, Lrx_activity_result2/ActivitiesLifecycleCallbacks;->getLiveActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 137
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lrx_activity_result2/RxActivityResult$Builder$3;->this$0:Lrx_activity_result2/RxActivityResult$Builder;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx_activity_result2/RxActivityResult$Builder;->getTargetFragment(Ljava/util/List;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lrx_activity_result2/RxActivityResult$Builder$3;->this$0:Lrx_activity_result2/RxActivityResult$Builder;

    iget-object v1, v1, Lrx_activity_result2/RxActivityResult$Builder;->subject:Lio/reactivex/subjects/PublishSubject;

    new-instance v2, Lrx_activity_result2/Result;

    invoke-direct {v2, v0, p1, p2, p3}, Lrx_activity_result2/Result;-><init>(Ljava/lang/Object;IILandroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lrx_activity_result2/RxActivityResult$Builder$3;->this$0:Lrx_activity_result2/RxActivityResult$Builder;

    iget-object p1, p1, Lrx_activity_result2/RxActivityResult$Builder;->subject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    :cond_1
    return-void
.end method
