.class public Lcom/zui/gallery/filtershow/tools/MatrixFit;
.super Ljava/lang/Object;
.source "MatrixFit.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MatrixFit"

.field private static sEPS:D = 1.000000013351432E-10


# instance fields
.field private mDimension:I

.field private mMatrix:[[D

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([[D[[D)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mValid:Z

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/tools/MatrixFit;->fit([[D[[D)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mValid:Z

    return-void
.end method

.method private gaussianElimination([[D)Z
    .locals 17

    move-object/from16 v0, p1

    .line 160
    array-length v1, v0

    const/4 v2, 0x0

    .line 161
    aget-object v3, v0, v2

    array-length v3, v3

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_6

    add-int/lit8 v5, v4, 0x1

    move v7, v4

    move v6, v5

    :goto_1
    if-ge v6, v1, :cond_1

    .line 166
    aget-object v8, v0, v6

    aget-wide v8, v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    aget-object v10, v0, v7

    aget-wide v10, v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    move v7, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p0

    move v8, v2

    .line 171
    :goto_2
    iget v9, v6, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v8, v9, :cond_2

    .line 172
    aget-object v9, v0, v4

    aget-wide v9, v9, v8

    .line 173
    aget-object v11, v0, v4

    aget-object v12, v0, v7

    aget-wide v12, v12, v8

    aput-wide v12, v11, v8

    .line 174
    aget-object v11, v0, v7

    aput-wide v9, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 177
    :cond_2
    aget-object v7, v0, v4

    aget-wide v7, v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sget-wide v9, Lcom/zui/gallery/filtershow/tools/MatrixFit;->sEPS:D

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_3

    return v2

    :cond_3
    move v7, v5

    :goto_3
    if-ge v7, v1, :cond_5

    .line 181
    aget-object v8, v0, v7

    aget-wide v8, v8, v4

    aget-object v10, v0, v4

    aget-wide v10, v10, v4

    div-double/2addr v8, v10

    move v10, v4

    :goto_4
    if-ge v10, v3, :cond_4

    .line 183
    aget-object v11, v0, v7

    aget-wide v12, v11, v10

    aget-object v14, v0, v4

    aget-wide v14, v14, v10

    mul-double/2addr v14, v8

    sub-double/2addr v12, v14

    aput-wide v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    move-object/from16 v6, p0

    add-int/lit8 v4, v1, -0x1

    :goto_5
    const/4 v5, -0x1

    if-le v4, v5, :cond_a

    .line 188
    aget-object v5, v0, v4

    aget-wide v7, v5, v4

    move v5, v2

    :goto_6
    if-ge v5, v4, :cond_8

    add-int/lit8 v9, v3, -0x1

    :goto_7
    add-int/lit8 v10, v4, -0x1

    if-le v9, v10, :cond_7

    .line 191
    aget-object v10, v0, v5

    aget-wide v11, v10, v9

    aget-object v13, v0, v4

    aget-wide v13, v13, v9

    aget-object v15, v0, v5

    aget-wide v15, v15, v4

    mul-double/2addr v13, v15

    div-double/2addr v13, v7

    sub-double/2addr v11, v13

    aput-wide v11, v10, v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 194
    :cond_8
    aget-object v5, v0, v4

    aget-wide v9, v5, v4

    div-double/2addr v9, v7

    aput-wide v9, v5, v4

    move v5, v1

    :goto_8
    if-ge v5, v3, :cond_9

    .line 196
    aget-object v9, v0, v4

    aget-wide v10, v9, v5

    div-double/2addr v10, v7

    aput-wide v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private printMatrix(Ljava/lang/String;[[D)V
    .locals 8

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MatrixFit"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    move v1, p1

    .line 147
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    const-string v2, ""

    move v3, p1

    move-object v4, v2

    .line 149
    :goto_1
    aget-object v5, p2, p1

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v1

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    :cond_0
    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public apply([D)[D
    .locals 11

    .line 121
    iget v0, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    array-length v1, p1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    new-array v0, v0, [D

    const/4 v1, 0x0

    move v2, v1

    .line 125
    :goto_0
    iget v3, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 126
    :goto_1
    iget v4, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v3, v4, :cond_1

    .line 127
    aget-wide v5, v0, v2

    aget-wide v7, p1, v3

    iget-object v9, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mMatrix:[[D

    aget-object v9, v9, v3

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-wide v9, v9, v4

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :cond_1
    aget-wide v5, v0, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mMatrix:[[D

    aget-object v3, v3, v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-wide v3, v3, v4

    add-double/2addr v5, v3

    aput-wide v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public fit([[D[[D)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 49
    const-class v3, D

    array-length v4, v1

    array-length v5, v2

    const-string v6, "MatrixFit"

    const/4 v7, 0x0

    if-ne v4, v5, :cond_12

    array-length v4, v1

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    goto/16 :goto_f

    .line 54
    :cond_0
    aget-object v4, v1, v7

    array-length v4, v4

    iput v4, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    add-int/lit8 v8, v4, 0x1

    add-int/2addr v4, v4

    add-int/2addr v4, v5

    const/4 v9, 0x2

    new-array v10, v9, [I

    aput v4, v10, v5

    aput v8, v10, v7

    .line 55
    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    iput-object v4, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mMatrix:[[D

    .line 57
    array-length v4, v1

    iget v8, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v4, v8, :cond_1

    const-string v1, "Too few points => under-determined system"

    .line 58
    invoke-static {v6, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 62
    :cond_1
    array-length v4, v1

    new-array v6, v9, [I

    aput v8, v6, v5

    aput v4, v6, v7

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    move v6, v7

    .line 63
    :goto_0
    array-length v8, v1

    if-ge v6, v8, :cond_3

    move v8, v7

    .line 64
    :goto_1
    iget v10, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v8, v10, :cond_2

    .line 65
    aget-object v10, v4, v6

    aget-object v11, v1, v6

    aget-wide v11, v11, v8

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 69
    :cond_3
    array-length v1, v2

    iget v6, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    new-array v8, v9, [I

    aput v6, v8, v5

    aput v1, v8, v7

    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v6, v7

    .line 70
    :goto_2
    array-length v8, v2

    if-ge v6, v8, :cond_5

    move v8, v7

    .line 71
    :goto_3
    iget v10, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v8, v10, :cond_4

    .line 72
    aget-object v10, v1, v6

    aget-object v11, v2, v6

    aget-wide v11, v11, v8

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 77
    :cond_5
    iget v2, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    add-int/lit8 v6, v2, 0x1

    new-array v8, v9, [I

    aput v2, v8, v5

    aput v6, v8, v7

    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move v6, v7

    .line 78
    :goto_4
    iget v8, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-ge v6, v8, :cond_9

    move v8, v7

    .line 79
    :goto_5
    iget v12, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    add-int/2addr v12, v5

    if-ge v8, v12, :cond_8

    move v12, v7

    .line 80
    :goto_6
    array-length v13, v4

    if-ge v12, v13, :cond_7

    .line 82
    iget v13, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v8, v13, :cond_6

    .line 83
    aget-object v13, v4, v12

    aget-wide v13, v13, v8

    goto :goto_7

    :cond_6
    move-wide v13, v10

    .line 85
    :goto_7
    aget-object v15, v2, v8

    aget-wide v16, v15, v6

    aget-object v18, v1, v12

    aget-wide v18, v18, v6

    mul-double v13, v13, v18

    add-double v16, v16, v13

    aput-wide v16, v15, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v8, 0x1

    add-int/2addr v8, v5

    new-array v6, v9, [I

    aput v8, v6, v5

    aput v1, v6, v7

    .line 91
    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v3, v7

    .line 92
    :goto_8
    array-length v6, v4

    if-ge v3, v6, :cond_d

    .line 93
    iget v6, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    add-int/2addr v6, v5

    new-array v6, v6, [D

    move v8, v7

    .line 94
    :goto_9
    iget v9, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v8, v9, :cond_a

    .line 95
    aget-object v9, v4, v3

    aget-wide v12, v9, v8

    aput-wide v12, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 97
    :cond_a
    aput-wide v10, v6, v9

    move v8, v7

    .line 98
    :goto_a
    iget v9, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    add-int/2addr v9, v5

    if-ge v8, v9, :cond_c

    move v9, v7

    .line 99
    :goto_b
    iget v12, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    add-int/2addr v12, v5

    if-ge v9, v12, :cond_b

    .line 100
    aget-object v12, v1, v8

    aget-wide v13, v12, v9

    aget-wide v15, v6, v8

    aget-wide v17, v6, v9

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    aput-wide v13, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    move v3, v7

    .line 106
    :goto_c
    iget v4, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_10

    move v4, v7

    .line 107
    :goto_d
    iget v6, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    add-int/2addr v6, v5

    if-ge v4, v6, :cond_e

    .line 108
    iget-object v6, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mMatrix:[[D

    aget-object v6, v6, v3

    aget-object v8, v1, v3

    aget-wide v8, v8, v4

    aput-wide v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_e
    move v4, v7

    .line 110
    :goto_e
    iget v6, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v4, v6, :cond_f

    .line 111
    iget-object v8, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mMatrix:[[D

    aget-object v8, v8, v3

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v4

    aget-object v9, v2, v3

    aget-wide v9, v9, v4

    aput-wide v9, v8, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 114
    :cond_10
    iget-object v1, v0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mMatrix:[[D

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/tools/MatrixFit;->gaussianElimination([[D)Z

    move-result v1

    if-nez v1, :cond_11

    return v7

    :cond_11
    return v5

    :cond_12
    :goto_f
    const-string v1, "from and to must be of same size"

    .line 50
    invoke-static {v6, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public getDimension()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    return v0
.end method

.method public getMatrix()[[D
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mMatrix:[[D

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mValid:Z

    return v0
.end method

.method public printEquation()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 135
    :goto_0
    iget v2, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v1, v2, :cond_1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\' = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v4, v0

    .line 137
    :goto_1
    iget v5, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    if-ge v4, v5, :cond_0

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " * "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mMatrix:[[D

    aget-object v2, v2, v4

    iget v6, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mMatrix:[[D

    iget v4, p0, Lcom/zui/gallery/filtershow/tools/MatrixFit;->mDimension:I

    aget-object v2, v2, v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v2, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MatrixFit"

    .line 141
    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
