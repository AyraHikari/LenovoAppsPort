.class Lcom/google/vr/sdk/widgets/common/ViewRotator;
.super Ljava/lang/Object;
.source "ViewRotator.java"


# static fields
.field private static final ORIENTATION_DELTA_THRESHOLD_DEGREES:I = 0x46


# instance fields
.field private currentViewOrientation90Inc:I

.field private final initialRotationDegrees:I

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private originalViewHeight:I

.field private originalViewWidth:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "view",
            "initialRotationDegrees",
            "trackingSensorsAvailable"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/common/ViewRotator;->isViewProperlyConfigured(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb4

    if-ge p3, v0, :cond_0

    .line 59
    iput p3, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->initialRotationDegrees:I

    goto :goto_0

    :cond_0
    sub-int/2addr p3, v0

    .line 62
    iput p3, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->initialRotationDegrees:I

    .line 65
    :goto_0
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    .line 66
    new-instance p2, Lcom/google/vr/sdk/widgets/common/ViewRotator$1;

    invoke-direct {p2, p0, p1, p4}, Lcom/google/vr/sdk/widgets/common/ViewRotator$1;-><init>(Lcom/google/vr/sdk/widgets/common/ViewRotator;Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-void

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View should have MATCH_PARENT layout and no translation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/google/vr/sdk/widgets/common/ViewRotator;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->initialRotationDegrees:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/vr/sdk/widgets/common/ViewRotator;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->currentViewOrientation90Inc:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/widgets/common/ViewRotator;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/common/ViewRotator;->rotateView(I)V

    return-void
.end method

.method static getNearestOrientationWith90Inc(I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    int-to-float v0, p0

    .line 179
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v0, v0

    .line 180
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x4056800000000000L    # 90.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int p0, v0

    return p0
.end method

.method private static isViewProperlyConfigured(Landroid/view/View;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 185
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v3, :cond_1

    :cond_0
    return v1

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    cmpl-float p0, p0, v2

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private rotateView(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPhoneOrientation"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewHeight:I

    if-nez v0, :cond_2

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewWidth:I

    .line 136
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewHeight:I

    .line 137
    iget v1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewWidth:I

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/common/ViewRotator;->getNearestOrientationWith90Inc(I)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->currentViewOrientation90Inc:I

    .line 145
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 147
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 161
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->currentViewOrientation90Inc:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_3

    .line 162
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    iget v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewWidth:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 165
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    iget v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewHeight:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 168
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 171
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 120
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 124
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewWidth:I

    .line 126
    iput v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->originalViewHeight:I

    return-void
.end method

.method public enable()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/ViewRotator;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method
