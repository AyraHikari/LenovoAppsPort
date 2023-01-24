.class public final Lcom/google/vr/sdk/widgets/video/deps/fc$a;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fp;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:F


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fp;)V
    .locals 7

    const v2, 0xc3500

    const/16 v3, 0x2710

    const/16 v4, 0x61a8

    const/16 v5, 0x61a8

    const/high16 v6, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/fc$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fp;IIIIF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fp;IIIIF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fp;

    .line 5
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->b:I

    .line 6
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->c:I

    .line 7
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->d:I

    .line 8
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->e:I

    .line 9
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->f:F

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fc;
    .locals 13

    .line 11
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/fc;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->b:I

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->c:I

    int-to-long v5, v0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->d:I

    int-to-long v7, v0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->e:I

    int-to-long v9, v0

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->f:F

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/fc;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[ILcom/google/vr/sdk/widgets/video/deps/fp;IJJJF)V

    return-object v12
.end method

.method public synthetic b(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fc$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fc;

    move-result-object p1

    return-object p1
.end method
