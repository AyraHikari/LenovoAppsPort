.class public Lcom/google/vr/vrcore/controller/api/ControllerInitResults;
.super Ljava/lang/Object;
.source "ControllerInitResults.java"


# static fields
.field public static final FAILED_CLIENT_OBSOLETE:I = 0x3

.field public static final FAILED_NOT_AUTHORIZED:I = 0x2

.field public static final FAILED_UNSUPPORTED:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "[UNKNOWN CONTROLLER INIT RESULT: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "FAILED_CLIENT_OBSOLETE"

    return-object p0

    :cond_1
    const-string p0, "FAILED_NOT_AUTHORIZED"

    return-object p0

    :cond_2
    const-string p0, "FAILED_UNSUPPORTED"

    return-object p0

    :cond_3
    const-string p0, "SUCCESS"

    return-object p0
.end method
