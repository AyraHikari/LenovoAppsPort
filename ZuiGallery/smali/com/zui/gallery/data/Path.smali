.class public Lcom/zui/gallery/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Path"

.field private static sRoot:Lcom/zui/gallery/data/Path;


# instance fields
.field private mChildren:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/gallery/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/zui/gallery/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/zui/gallery/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/data/Path;-><init>(Lcom/zui/gallery/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/gallery/data/Path;->sRoot:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/zui/gallery/data/Path;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/zui/gallery/data/Path;->mParent:Lcom/zui/gallery/data/Path;

    .line 39
    iput-object p2, p0, Lcom/zui/gallery/data/Path;->mSegment:Ljava/lang/String;

    return-void
.end method

.method static clearAll()V
    .locals 4

    .line 211
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    .line 212
    :try_start_0
    new-instance v1, Lcom/zui/gallery/data/Path;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/zui/gallery/data/Path;-><init>(Lcom/zui/gallery/data/Path;Ljava/lang/String;)V

    sput-object v1, Lcom/zui/gallery/data/Path;->sRoot:Lcom/zui/gallery/data/Path;

    .line 213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static dumpAll()V
    .locals 2

    .line 217
    sget-object v0, Lcom/zui/gallery/data/Path;->sRoot:Lcom/zui/gallery/data/Path;

    const-string v1, ""

    invoke-static {v0, v1, v1}, Lcom/zui/gallery/data/Path;->dumpAll(Lcom/zui/gallery/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static dumpAll(Lcom/zui/gallery/data/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 221
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    const-string v2, "Path"

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/zui/gallery/data/Path;->mSegment:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/zui/gallery/data/Path;->mChildren:Ljava/util/WeakHashMap;

    if-eqz p1, :cond_3

    .line 226
    iget-object p1, p0, Lcom/zui/gallery/data/Path;->mChildren:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v1, 0x0

    .line 227
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 228
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    iget-object v4, p0, Lcom/zui/gallery/data/Path;->mChildren:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/Path;

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "Path"

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_2

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+-- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/zui/gallery/data/Path;->dumpAll(Lcom/zui/gallery/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+-- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/zui/gallery/data/Path;->dumpAll(Lcom/zui/gallery/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;
    .locals 4

    .line 104
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/zui/gallery/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 106
    sget-object v1, Lcom/zui/gallery/data/Path;->sRoot:Lcom/zui/gallery/data/Path;

    const/4 v2, 0x0

    .line 107
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 108
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 132
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_7

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_6

    move v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_4

    .line 141
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const/16 v8, 0x7d

    if-ne v7, v8, :cond_2

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    if-ne v7, v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 149
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, 0x1

    goto :goto_0

    .line 147
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbalanced brace in path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 153
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 133
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_6

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v2, v0, :cond_5

    move v7, v1

    move v6, v2

    :goto_1
    if-ge v6, v0, :cond_3

    .line 170
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    if-ne v8, v5, :cond_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_1
    if-nez v7, :cond_2

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-nez v7, :cond_4

    .line 178
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v6, 0x1

    goto :goto_0

    .line 176
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbalanced brace in path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 182
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 162
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad sequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getChild(I)Lcom/zui/gallery/data/Path;
    .locals 0

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    return-object p1
.end method

.method public getChild(J)Lcom/zui/gallery/data/Path;
    .locals 0

    .line 68
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    return-object p1
.end method

.method public getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;
    .locals 3

    .line 43
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/Path;->mChildren:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/data/Path;->mChildren:Ljava/util/WeakHashMap;

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/data/Path;->mChildren:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/Path;

    if-eqz v1, :cond_1

    .line 48
    monitor-exit v0

    return-object v1

    .line 51
    :cond_1
    :goto_0
    new-instance v1, Lcom/zui/gallery/data/Path;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/data/Path;-><init>(Lcom/zui/gallery/data/Path;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/zui/gallery/data/Path;->mChildren:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getObject()Lcom/zui/gallery/data/MediaObject;
    .locals 2

    .line 79
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaObject;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParent()Lcom/zui/gallery/data/Path;
    .locals 2

    .line 58
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/Path;->mParent:Lcom/zui/gallery/data/Path;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 187
    sget-object v0, Lcom/zui/gallery/data/Path;->sRoot:Lcom/zui/gallery/data/Path;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->getPrefixPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcom/zui/gallery/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPath()Lcom/zui/gallery/data/Path;
    .locals 4

    .line 192
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    .line 194
    :try_start_0
    sget-object v1, Lcom/zui/gallery/data/Path;->sRoot:Lcom/zui/gallery/data/Path;

    if-eq p0, v1, :cond_1

    move-object v1, p0

    .line 197
    :goto_0
    iget-object v2, v1, Lcom/zui/gallery/data/Path;->mParent:Lcom/zui/gallery/data/Path;

    sget-object v3, Lcom/zui/gallery/data/Path;->sRoot:Lcom/zui/gallery/data/Path;

    if-eq v2, v3, :cond_0

    .line 198
    iget-object v1, v1, Lcom/zui/gallery/data/Path;->mParent:Lcom/zui/gallery/data/Path;

    goto :goto_0

    .line 200
    :cond_0
    monitor-exit v0

    return-object v1

    .line 195
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 201
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setObject(Lcom/zui/gallery/data/MediaObject;)V
    .locals 2

    .line 72
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/zui/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public split()[Ljava/lang/String;
    .locals 6

    .line 115
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, p0

    .line 117
    :goto_0
    :try_start_0
    sget-object v3, Lcom/zui/gallery/data/Path;->sRoot:Lcom/zui/gallery/data/Path;

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Lcom/zui/gallery/data/Path;->mParent:Lcom/zui/gallery/data/Path;

    goto :goto_0

    .line 120
    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    move-object v3, p0

    .line 122
    :goto_1
    sget-object v4, Lcom/zui/gallery/data/Path;->sRoot:Lcom/zui/gallery/data/Path;

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 123
    iget-object v5, v3, Lcom/zui/gallery/data/Path;->mSegment:Ljava/lang/String;

    aput-object v5, v2, v1

    .line 122
    iget-object v3, v3, Lcom/zui/gallery/data/Path;->mParent:Lcom/zui/gallery/data/Path;

    move v1, v4

    goto :goto_1

    .line 125
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 87
    const-class v0, Lcom/zui/gallery/data/Path;

    monitor-enter v0

    .line 88
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 90
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    const-string v4, "/"

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
