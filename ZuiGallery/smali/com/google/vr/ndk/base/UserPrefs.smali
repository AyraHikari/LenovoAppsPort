.class public Lcom/google/vr/ndk/base/UserPrefs;
.super Ljava/lang/Object;
.source "UserPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/UserPrefs$ControllerHandedness;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final nativeUserPrefs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/google/vr/ndk/base/UserPrefs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/UserPrefs;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeUserPrefs"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/google/vr/ndk/base/UserPrefs;->nativeUserPrefs:J

    return-void
.end method


# virtual methods
.method public getControllerHandedness()I
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/google/vr/ndk/base/UserPrefs;->nativeUserPrefs:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeUserPrefsGetControllerHandedness(J)I

    move-result v0

    return v0
.end method
