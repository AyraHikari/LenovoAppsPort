.class public final Lcom/google/vr/sdk/widgets/video/deps/bq$d;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:[B


# direct methods
.method public constructor <init>(JIJIIIIIZ[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->a:J

    .line 3
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->b:I

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->c:J

    .line 5
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->d:I

    .line 6
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->e:I

    .line 7
    iput p8, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->f:I

    .line 8
    iput p9, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->g:I

    .line 9
    iput p10, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->h:I

    .line 10
    iput-boolean p11, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->i:Z

    .line 11
    iput-object p12, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->j:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->e:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->f:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method
