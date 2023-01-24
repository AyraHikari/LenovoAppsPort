.class public final Lcom/google/vr/sdk/widgets/video/deps/C;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/C;


# instance fields
.field private final b:[I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/C;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-direct {v0, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/C;-><init>([II)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/C;->a:Lcom/google/vr/sdk/widgets/video/deps/C;

    return-void
.end method

.method constructor <init>([II)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 11
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->b:[I

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 13
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->b:[I

    .line 14
    :goto_0
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/vr/sdk/widgets/video/deps/C;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/C;->a(Landroid/content/Intent;)Lcom/google/vr/sdk/widgets/video/deps/C;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Intent;)Lcom/google/vr/sdk/widgets/video/deps/C;
    .locals 4

    if-eqz p0, :cond_1

    const-string v0, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/C;

    const-string v2, "android.media.extra.ENCODINGS"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 7
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v2, p0}, Lcom/google/vr/sdk/widgets/video/deps/C;-><init>([II)V

    return-object v0

    .line 5
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/C;->a:Lcom/google/vr/sdk/widgets/video/deps/C;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->c:I

    return v0
.end method

.method public a(I)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p1, Lcom/google/vr/sdk/widgets/video/deps/C;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 22
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/C;

    .line 23
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->b:[I

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/C;->b:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->c:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/C;->c:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->c:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 25
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->c:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/C;->b:[I

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", supportedEncodings="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
