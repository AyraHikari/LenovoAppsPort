.class Lrx_activity_result2/ActivitiesLifecycleCallbacks$3;
.super Ljava/lang/Object;
.source "ActivitiesLifecycleCallbacks.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


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
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx_activity_result2/ActivitiesLifecycleCallbacks;


# direct methods
.method constructor <init>(Lrx_activity_result2/ActivitiesLifecycleCallbacks;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lrx_activity_result2/ActivitiesLifecycleCallbacks$3;->this$0:Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    instance-of p1, p1, Landroid/app/Activity;

    return p1
.end method
