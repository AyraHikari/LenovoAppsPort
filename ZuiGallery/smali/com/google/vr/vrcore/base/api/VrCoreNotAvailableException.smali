.class public final Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
.super Ljava/lang/Exception;
.source "VrCoreNotAvailableException.java"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getConnectionResultString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    iput p1, p0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;->errorCode:I

    return-void
.end method
