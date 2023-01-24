.class public final Lcom/google/vr/sdk/widgets/video/deps/dr;
.super Ljava/lang/Object;
.source "ChunkedTrackBlacklistUtil.java"


# static fields
.field public static final a:J = 0xea60L

.field private static final b:Ljava/lang/String; = "ChunkedTrackBlacklist"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fi;ILjava/lang/Exception;)Z
    .locals 2

    const-wide/32 v0, 0xea60

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a(Lcom/google/vr/sdk/widgets/video/deps/fi;ILjava/lang/Exception;J)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fi;ILjava/lang/Exception;J)Z
    .locals 4

    .line 2
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0, p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(IJ)Z

    move-result v0

    .line 4
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/fI$e;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/fI$e;->f:I

    const-string v1, ", format="

    const-string v2, "ChunkedTrackBlacklist"

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Blacklisted: duration="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", responseCode="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x5c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Blacklisting failed (cannot blacklist last enabled track): responseCode="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Exception;)Z
    .locals 2

    .line 14
    instance-of v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 15
    check-cast p0, Lcom/google/vr/sdk/widgets/video/deps/fI$e;

    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$e;->f:I

    const/16 v0, 0x194

    if-eq p0, v0, :cond_0

    const/16 v0, 0x19a

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
