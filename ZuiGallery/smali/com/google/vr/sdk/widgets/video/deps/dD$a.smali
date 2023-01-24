.class public final Lcom/google/vr/sdk/widgets/video/deps/dD$a;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dD$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv$a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv$a;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 5
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/fK;Lcom/google/vr/sdk/widgets/video/deps/dF;I[ILcom/google/vr/sdk/widgets/video/deps/fi;IJZZ)Lcom/google/vr/sdk/widgets/video/deps/dx;
    .locals 15

    move-object v0, p0

    .line 7
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v9

    .line 8
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dD;

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/dD$a;->b:I

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v10, p7

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v2 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/dD;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fK;Lcom/google/vr/sdk/widgets/video/deps/dF;I[ILcom/google/vr/sdk/widgets/video/deps/fi;ILcom/google/vr/sdk/widgets/video/deps/fv;JIZZ)V

    return-object v1
.end method
