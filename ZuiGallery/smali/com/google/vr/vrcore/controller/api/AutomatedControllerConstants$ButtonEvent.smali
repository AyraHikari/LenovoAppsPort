.class public final Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants$ButtonEvent;
.super Ljava/lang/Object;
.source "AutomatedControllerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/AutomatedControllerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ButtonEvent"
.end annotation


# static fields
.field public static final BUTTON_KEY:Ljava/lang/String; = "button"

.field public static final IS_PRESSING_KEY:Ljava/lang/String; = "pressing"

.field public static final TIME_NANO_KEY:Ljava/lang/String; = "delay-nanos"

.field public static final TYPE:Ljava/lang/String; = "button"


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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
