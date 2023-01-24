.class public final Lcom/google/vr/sdk/widgets/video/deps/bc;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bc$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Lcom/google/vr/sdk/widgets/video/deps/m;

.field public final i:I

.field public final j:[J

.field public final k:[J

.field public final l:I

.field private final m:[Lcom/google/vr/sdk/widgets/video/deps/bd;


# direct methods
.method public constructor <init>(IIJJJLcom/google/vr/sdk/widgets/video/deps/m;I[Lcom/google/vr/sdk/widgets/video/deps/bd;I[J[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->c:I

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    .line 4
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    .line 5
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->f:J

    .line 6
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->g:J

    .line 7
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 8
    iput p10, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->i:I

    .line 9
    iput-object p11, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->m:[Lcom/google/vr/sdk/widgets/video/deps/bd;

    .line 10
    iput p12, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    .line 11
    iput-object p13, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    .line 12
    iput-object p14, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->k:[J

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/bd;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bc;->m:[Lcom/google/vr/sdk/widgets/video/deps/bd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 15
    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method
