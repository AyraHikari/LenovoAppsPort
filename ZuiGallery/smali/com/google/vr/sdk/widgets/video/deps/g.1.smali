.class public final Lcom/google/vr/sdk/widgets/video/deps/g;
.super Ljava/lang/Exception;
.source "ExoPlaybackException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/g$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field public final d:I

.field public final e:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/g;->d:I

    .line 6
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/g;->e:I

    return-void
.end method

.method public static a(Ljava/io/IOException;)Lcom/google/vr/sdk/widgets/video/deps/g;
    .locals 4

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/g;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/g;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method static a(Ljava/lang/RuntimeException;)Lcom/google/vr/sdk/widgets/video/deps/g;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/g;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/g;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/g;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/g;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public b()Ljava/lang/Exception;
    .locals 2

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/g;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/g;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public c()Ljava/lang/RuntimeException;
    .locals 2

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/g;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/g;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0
.end method
