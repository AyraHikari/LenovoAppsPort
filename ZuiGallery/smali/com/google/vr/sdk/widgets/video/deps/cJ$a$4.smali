.class Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/fy;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/vr/sdk/widgets/video/deps/m;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:J

.field final synthetic j:J

.field final synthetic k:J

.field final synthetic l:Ljava/io/IOException;

.field final synthetic m:Z

.field final synthetic n:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->n:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    move v1, p3

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->b:I

    move v1, p4

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->c:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    move v1, p6

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->e:I

    move-object v1, p7

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->f:Ljava/lang/Object;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->g:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->h:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->i:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->j:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->k:J

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->l:Ljava/io/IOException;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->n:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;)Lcom/google/vr/sdk/widgets/video/deps/cJ;

    move-result-object v2

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->b:I

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->c:I

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->e:I

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->f:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->n:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->g:J

    .line 3
    invoke-static {v1, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->n:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-wide v11, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->h:J

    .line 4
    invoke-static {v1, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;J)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->i:J

    move-object/from16 v21, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->j:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->k:J

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->l:Ljava/io/IOException;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;->m:Z

    move/from16 v20, v1

    move-object/from16 v2, v21

    .line 5
    invoke-interface/range {v2 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/cJ;->onLoadError(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method
