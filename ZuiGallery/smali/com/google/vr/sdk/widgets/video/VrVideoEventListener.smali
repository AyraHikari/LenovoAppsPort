.class public Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;
.super Lcom/google/vr/sdk/widgets/common/VrEventListener;
.source "VrVideoEventListener.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-class v0, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    return-void
.end method

.method public onNewFrame()V
    .locals 0

    return-void
.end method
