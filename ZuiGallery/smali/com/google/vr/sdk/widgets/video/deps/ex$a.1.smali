.class Lcom/google/vr/sdk/widgets/video/deps/ex$a;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;
    }
.end annotation


# static fields
.field private static final a:I = -0x1

.field private static final b:I = 0x20

.field private static final c:I = 0xf


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/text/SpannableStringBuilder;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->f:Ljava/util/List;

    .line 5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(II)V

    return-void
.end method


# virtual methods
.method public a(C)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->h:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/16 v0, 0xf

    .line 12
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->h:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->i:I

    .line 14
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->j:I

    .line 15
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->k:I

    .line 16
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->l:I

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->m:I

    return-void
.end method

.method public a(Landroid/text/style/CharacterStyle;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/text/style/CharacterStyle;I)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e:Ljava/util/List;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;-><init>(Landroid/text/style/CharacterStyle;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->m:I

    goto :goto_0

    .line 48
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->m:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 49
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->m:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    .line 50
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 51
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 52
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->m:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    .line 20
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->i:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->h:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->j:I

    return-void
.end method

.method public d()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->m:I

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->l:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Landroid/text/SpannableString;
    .locals 7

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 57
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x21

    if-ge v2, v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->d:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;

    .line 62
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;->c:I

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e:Ljava/util/List;

    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;->c:I

    add-int/2addr v5, v1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;->b:I

    goto :goto_2

    :cond_1
    move v3, v0

    .line 65
    :goto_2
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    iget-object v6, v2, Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;->a:Landroid/text/style/CharacterStyle;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ex$a$a;->b:I

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->m:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 68
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->m:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public f()Lcom/google/vr/sdk/widgets/video/deps/em;
    .locals 12

    .line 70
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 73
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->e()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 76
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->i:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->j:I

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v2, 0x20

    .line 79
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v2, v3

    .line 81
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->k:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v8, 0x3

    if-ge v5, v8, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    move v8, v2

    move v9, v6

    goto :goto_1

    .line 84
    :cond_2
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->k:I

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x42000000    # 32.0f

    if-ne v5, v7, :cond_3

    if-lez v4, :cond_3

    rsub-int/lit8 v2, v3, 0x20

    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float/2addr v2, v9

    add-float/2addr v2, v8

    move v8, v2

    move v9, v7

    goto :goto_1

    :cond_3
    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float/2addr v2, v9

    add-float/2addr v2, v8

    move v9, v0

    move v8, v2

    .line 91
    :goto_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->k:I

    if-eq v2, v6, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->h:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_4

    goto :goto_2

    :cond_4
    move v5, v0

    goto :goto_3

    .line 93
    :cond_5
    :goto_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->h:I

    add-int/lit8 v0, v0, -0xf

    add-int/lit8 v2, v0, -0x2

    move v5, v7

    .line 97
    :goto_3
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/em;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v4, v2

    const/4 v6, 0x1

    const/4 v11, 0x1

    move-object v0, v10

    move-object v2, v3

    move v3, v4

    move v4, v6

    move v6, v8

    move v7, v9

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v10
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method