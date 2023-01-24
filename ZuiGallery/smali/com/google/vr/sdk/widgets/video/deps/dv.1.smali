.class public abstract Lcom/google/vr/sdk/widgets/video/deps/dv;
.super Lcom/google/vr/sdk/widgets/video/deps/dm;
.source "MediaChunk.java"


# instance fields
.field public final i:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJI)V
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dm;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJ)V

    .line 2
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, p10

    .line 3
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dv;->i:I

    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->i:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract h()Z
.end method
