.class public final Lcom/google/vr/sdk/widgets/video/deps/q$a;
.super Ljava/lang/Object;
.source "MediaPeriodInfoSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJJJZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    .line 5
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->d:J

    .line 6
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->e:J

    .line 7
    iput-boolean p10, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->f:Z

    .line 8
    iput-boolean p11, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJJJZZLcom/google/vr/sdk/widgets/video/deps/q$1;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p11}, Lcom/google/vr/sdk/widgets/video/deps/q$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJJJZZ)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 13

    .line 10
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a(I)Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->d:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->e:J

    iget-boolean v10, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->f:Z

    iget-boolean v11, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->g:Z

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/q$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJJJZZ)V

    return-object v12
.end method

.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 13

    .line 11
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->d:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->e:J

    iget-boolean v10, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->f:Z

    iget-boolean v11, p0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->g:Z

    move-object v0, v12

    move-wide v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/q$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJJJZZ)V

    return-object v12
.end method
