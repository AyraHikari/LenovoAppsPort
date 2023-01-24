.class public final Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants$OrientationEvent;
.super Ljava/lang/Object;
.source "AutomatedControllerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OrientationEvent"
.end annotation


# static fields
.field public static final QW_KEY:Ljava/lang/String; = "qw"

.field public static final QX_KEY:Ljava/lang/String; = "qx"

.field public static final QY_KEY:Ljava/lang/String; = "qy"

.field public static final QZ_KEY:Ljava/lang/String; = "qz"

.field public static final TIME_NANO_KEY:Ljava/lang/String; = "time-nanos"

.field public static final TYPE:Ljava/lang/String; = "orientation"


# direct methods
.method public constructor <init>(Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
