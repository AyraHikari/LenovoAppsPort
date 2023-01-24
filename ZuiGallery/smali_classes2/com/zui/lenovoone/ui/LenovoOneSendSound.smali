.class public final Lcom/zui/lenovoone/ui/LenovoOneSendSound;
.super Ljava/lang/Object;
.source "LenovoOneSendSound.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/lenovoone/ui/LenovoOneSendSound$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLenovoOneSendSound.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LenovoOneSendSound.kt\ncom/zui/lenovoone/ui/LenovoOneSendSound\n*L\n1#1,45:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/zui/lenovoone/ui/LenovoOneSendSound;",
        "",
        "mApplication",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "mSoundPool",
        "Landroid/media/SoundPool;",
        "clear",
        "",
        "play",
        "Companion",
        "lenovoone-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/zui/lenovoone/ui/LenovoOneSendSound$Companion;

.field private static final TAG:Ljava/lang/String; = "LenovoOneUI"


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/lenovoone/ui/LenovoOneSendSound$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/lenovoone/ui/LenovoOneSendSound$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/zui/lenovoone/ui/LenovoOneSendSound;->Companion:Lcom/zui/lenovoone/ui/LenovoOneSendSound$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "mApplication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/lenovoone/ui/LenovoOneSendSound;->mApplication:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendSound;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v1, "mSoundPool"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public final play()V
    .locals 4

    .line 19
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    .line 20
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 24
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 25
    invoke-virtual {v2, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    .line 29
    sget-object v2, Lcom/zui/lenovoone/ui/LenovoOneSendSound$play$1$1;->INSTANCE:Lcom/zui/lenovoone/ui/LenovoOneSendSound$play$1$1;

    check-cast v2, Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 37
    iget-object v2, p0, Lcom/zui/lenovoone/ui/LenovoOneSendSound;->mApplication:Landroid/app/Application;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/zui/lenovoone/ui/R$raw;->send:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    const-string v1, "SoundPool.Builder()\n    \u2026aw.send, 1)\n            }"

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/lenovoone/ui/LenovoOneSendSound;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method
