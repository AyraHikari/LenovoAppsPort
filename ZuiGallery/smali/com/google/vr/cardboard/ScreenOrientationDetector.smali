.class public Lcom/google/vr/cardboard/ScreenOrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "ScreenOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;,
        Lcom/google/vr/cardboard/ScreenOrientationDetector$Orientation;
    }
.end annotation


# static fields
.field private static final DEFAULT_LANDSCAPE_TOLERANCE_DEGREES:I = 0xa

.field private static final DEFAULT_PORTRAIT_TOLERANCE_DEGREES:I = 0x1e


# instance fields
.field private final clientListener:Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;

.field private currentScreenOrientation:I

.field private final landscapeToleranceDegrees:I

.field private final portraitToleranceDegrees:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    const/16 v0, 0x1e

    const/16 v1, 0xa

    .line 51
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/cardboard/ScreenOrientationDetector;-><init>(Landroid/content/Context;Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "listener",
            "portraitToleranceDegrees",
            "landscapeToleranceDegrees"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    add-int p1, p3, p4

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    .line 65
    iput-object p2, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->clientListener:Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;

    .line 66
    iput p3, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->portraitToleranceDegrees:I

    .line 67
    iput p4, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->landscapeToleranceDegrees:I

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Portrait and landscape detection thresholds must sum to to <= 90 degrees"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private determineScreenOrientation(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientationDegrees"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 110
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    .line 111
    iget v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->portraitToleranceDegrees:I

    if-le p1, v0, :cond_5

    rsub-int v0, v0, 0x168

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, -0x5a

    .line 115
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->landscapeToleranceDegrees:I

    if-gt v0, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit16 v0, p1, -0xb4

    .line 118
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->portraitToleranceDegrees:I

    if-gt v0, v1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    add-int/lit16 p1, p1, -0x10e

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->landscapeToleranceDegrees:I

    if-gt p1, v0, :cond_4

    const/4 p1, 0x0

    return p1

    .line 127
    :cond_4
    iget p1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    return p1

    :cond_5
    :goto_0
    const/4 p1, 0x2

    return p1
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    .line 73
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public getCurrentScreenOrientation()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/ScreenOrientationDetector;->determineScreenOrientation(I)I

    move-result p1

    .line 85
    iget v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    if-eq p1, v0, :cond_0

    .line 86
    iput p1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    .line 87
    iget-object v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->clientListener:Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;

    invoke-interface {v0, p1}, Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;->onScreenOrientationChanged(I)V

    :cond_0
    return-void
.end method
