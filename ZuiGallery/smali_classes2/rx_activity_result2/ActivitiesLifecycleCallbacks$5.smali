.class Lrx_activity_result2/ActivitiesLifecycleCallbacks$5;
.super Ljava/lang/Object;
.source "ActivitiesLifecycleCallbacks.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx_activity_result2/ActivitiesLifecycleCallbacks;->getOLiveActivity()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Long;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx_activity_result2/ActivitiesLifecycleCallbacks;


# direct methods
.method constructor <init>(Lrx_activity_result2/ActivitiesLifecycleCallbacks;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lrx_activity_result2/ActivitiesLifecycleCallbacks$5;->this$0:Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object p1, p0, Lrx_activity_result2/ActivitiesLifecycleCallbacks$5;->this$0:Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    iget-object p1, p1, Lrx_activity_result2/ActivitiesLifecycleCallbacks;->liveActivityOrNull:Landroid/app/Activity;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    iget-object p1, p0, Lrx_activity_result2/ActivitiesLifecycleCallbacks$5;->this$0:Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    iget-object p1, p1, Lrx_activity_result2/ActivitiesLifecycleCallbacks;->liveActivityOrNull:Landroid/app/Activity;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lrx_activity_result2/ActivitiesLifecycleCallbacks$5;->apply(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
