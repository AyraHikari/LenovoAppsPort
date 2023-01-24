.class public final Lcom/google/vr/sdk/widgets/video/deps/eX$a;
.super Ljava/lang/Object;
.source "WebvttCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/eX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "WebvttCueBuilder"


# instance fields
.field private b:J

.field private c:J

.field private d:Landroid/text/SpannableStringBuilder;

.field private e:Landroid/text/Layout$Alignment;

.field private f:F

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->a()V

    return-void
.end method

.method private c()Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->e:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    .line 39
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->j:I

    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/eX$1;->a:[I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->e:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->e:Landroid/text/Layout$Alignment;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized alignment: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebvttCueBuilder"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->j:I

    goto :goto_0

    .line 45
    :cond_1
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->j:I

    goto :goto_0

    .line 43
    :cond_2
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->j:I

    goto :goto_0

    .line 41
    :cond_3
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->j:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 26
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->f:F

    return-object p0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 28
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->g:I

    return-object p0
.end method

.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->b:J

    return-object p0
.end method

.method public a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->e:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public a(Landroid/text/SpannableStringBuilder;)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->d:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->b:J

    .line 5
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->c:J

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->d:Landroid/text/SpannableStringBuilder;

    .line 7
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->e:Landroid/text/Layout$Alignment;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->f:F

    const/high16 v1, -0x80000000

    .line 9
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->g:I

    .line 10
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->h:I

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->i:F

    .line 12
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->j:I

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->k:F

    return-void
.end method

.method public b(F)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 32
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->i:F

    return-object p0
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 30
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->h:I

    return-object p0
.end method

.method public b(J)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->c:J

    return-object p0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/eX;
    .locals 15

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->i:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->j:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->c()Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    .line 17
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eX;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->b:J

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->c:J

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->d:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->e:Landroid/text/Layout$Alignment;

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->f:F

    iget v10, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->g:I

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->h:I

    iget v12, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->i:F

    iget v13, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->j:I

    iget v14, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->k:F

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/eX;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v0
.end method

.method public c(F)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 36
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->k:F

    return-object p0
.end method

.method public c(I)Lcom/google/vr/sdk/widgets/video/deps/eX$a;
    .locals 0

    .line 34
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->j:I

    return-object p0
.end method
