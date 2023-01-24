.class public final Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants;
.super Ljava/lang/Object;
.source "AutomatedControllerConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants$TouchEvent;,
        Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants$OrientationEvent;,
        Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants$ButtonEvent;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_KEY:Ljava/lang/String; = "event-type"

.field public static final PAPRIKA_DATA_KEY:Ljava/lang/String; = "paprika-data"

.field public static final VRCORE_ACTION_AUTOMATION:Ljava/lang/String; = "com.google.vr.vrcore.ACTION_AUTOMATION"


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "This is class of constants, you may not create an object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
