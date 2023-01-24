.class public final Lcom/zui/gallery/database/GalleryCursorJoiner;
.super Ljava/lang/Object;
.source "GalleryCursorJoiner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/database/GalleryCursorJoiner$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/zui/gallery/database/GalleryCursorJoiner$Result;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lcom/zui/gallery/database/GalleryCursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mColumnsLeft:[I

.field private mColumnsRight:[I

.field private mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

.field private mCompareResultIsValid:Z

.field private mCursorLeft:Landroid/database/Cursor;

.field private mCursorRight:Landroid/database/Cursor;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_0

    .line 88
    iput-object p1, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    .line 89
    iput-object p3, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResultIsValid:Z

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/database/GalleryCursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mColumnsLeft:[I

    .line 97
    invoke-direct {p0, p3, p4}, Lcom/zui/gallery/database/GalleryCursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mColumnsRight:[I

    .line 99
    iget-object p1, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mColumnsLeft:[I

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mValues:[Ljava/lang/String;

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "you must have the same number of columns on the left and right, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p4

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .locals 3

    .line 113
    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 114
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 115
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static varargs compareStrings([Ljava/lang/String;)I
    .locals 6

    .line 253
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "panhui7"

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move v2, v0

    .line 258
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "-----------------------------------"

    .line 261
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 263
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 264
    aget-object v2, p0, v1

    const/4 v3, -0x1

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 265
    aget-object v2, p0, v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 269
    aget-object v4, p0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_3

    return v5

    .line 274
    :cond_3
    aget-object v4, p0, v1

    aget-object v2, p0, v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    if-gez v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    return v3

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_6
    return v0

    .line 254
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "values.length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "you must specify an even number of values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private incrementCursors()V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_3

    .line 228
    sget-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$1;->$SwitchMap$com$zui$gallery$database$GalleryCursorJoiner$Result:[I

    iget-object v1, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    invoke-virtual {v1}, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 237
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    :goto_0
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResultIsValid:Z

    :cond_3
    return-void
.end method

.method private static populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .locals 3

    const/4 v0, 0x0

    .line 217
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 218
    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasNext, mCompareResultIsValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResultIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCompareResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "panhui7"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-boolean v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResultIsValid:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 129
    sget-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$1;->$SwitchMap$com$zui$gallery$database$GalleryCursorJoiner$Result:[I

    iget-object v4, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    invoke-virtual {v4}, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    const-string v0, "is RIGHT"

    .line 139
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .line 143
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value for mCompareResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "is LEFT"

    .line 135
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2

    :cond_6
    const-string v0, "is BOTH"

    .line 131
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    return v2

    .line 147
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move v2, v3

    :cond_b
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/zui/gallery/database/GalleryCursorJoiner$Result;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/zui/gallery/database/GalleryCursorJoiner$Result;
    .locals 5

    .line 167
    invoke-virtual {p0}, Lcom/zui/gallery/database/GalleryCursorJoiner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    invoke-direct {p0}, Lcom/zui/gallery/database/GalleryCursorJoiner;->incrementCursors()V

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 173
    iget-object v2, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasLeft = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasRight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "panhui7"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mColumnsLeft:[I

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/zui/gallery/database/GalleryCursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 179
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mColumnsRight:[I

    invoke-static {v0, v2, v3, v1}, Lcom/zui/gallery/database/GalleryCursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mValues:[Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/database/GalleryCursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    sget-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->RIGHT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    iput-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    goto :goto_0

    .line 185
    :cond_1
    sget-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->BOTH:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    iput-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    goto :goto_0

    .line 182
    :cond_2
    sget-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->LEFT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    iput-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 192
    sget-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->LEFT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    iput-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    goto :goto_0

    .line 194
    :cond_4
    sget-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->RIGHT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    iput-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    .line 196
    :goto_0
    iput-boolean v1, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResultIsValid:Z

    .line 197
    iget-object v0, p0, Lcom/zui/gallery/database/GalleryCursorJoiner;->mCompareResult:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    return-object v0

    .line 168
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must only call next() when hasNext() is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/zui/gallery/database/GalleryCursorJoiner;->next()Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
