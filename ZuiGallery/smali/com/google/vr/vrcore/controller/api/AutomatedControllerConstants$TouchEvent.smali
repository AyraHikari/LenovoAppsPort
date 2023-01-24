.class public final Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants$TouchEvent;
.super Ljava/lang/Object;
.source "AutomatedControllerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TouchEvent"
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "touch-action"

.field public static final TIME_NANO_KEY:Ljava/lang/String; = "time-nanos"

.field public static final TYPE:Ljava/lang/String; = "touch"

.field public static final X_KEY:Ljava/lang/String; = "touch-x"

.field public static final Y_KEY:Ljava/lang/String; = "touch-y"


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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
