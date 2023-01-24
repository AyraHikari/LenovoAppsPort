.class public final Lrx_activity_result2/RxActivityResult;
.super Ljava/lang/Object;
.source "RxActivityResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx_activity_result2/RxActivityResult$Builder;
    }
.end annotation


# static fields
.field static activitiesLifecycle:Lrx_activity_result2/ActivitiesLifecycleCallbacks;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static on(Landroid/app/Activity;)Lrx_activity_result2/RxActivityResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;)",
            "Lrx_activity_result2/RxActivityResult$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lrx_activity_result2/RxActivityResult$Builder;

    invoke-direct {v0, p0}, Lrx_activity_result2/RxActivityResult$Builder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(Landroidx/fragment/app/Fragment;)Lrx_activity_result2/RxActivityResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(TT;)",
            "Lrx_activity_result2/RxActivityResult$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lrx_activity_result2/RxActivityResult$Builder;

    invoke-direct {v0, p0}, Lrx_activity_result2/RxActivityResult$Builder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static register(Landroid/app/Application;)V
    .locals 1

    .line 43
    new-instance v0, Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    invoke-direct {v0, p0}, Lrx_activity_result2/ActivitiesLifecycleCallbacks;-><init>(Landroid/app/Application;)V

    sput-object v0, Lrx_activity_result2/RxActivityResult;->activitiesLifecycle:Lrx_activity_result2/ActivitiesLifecycleCallbacks;

    return-void
.end method
