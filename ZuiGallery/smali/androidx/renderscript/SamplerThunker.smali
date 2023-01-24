.class Landroidx/renderscript/SamplerThunker;
.super Landroidx/renderscript/Sampler;
.source "SamplerThunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/SamplerThunker$Builder;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$support$v8$renderscript$Sampler$Value:[I


# instance fields
.field mN:Landroid/renderscript/Sampler;


# direct methods
.method static synthetic $SWITCH_TABLE$android$support$v8$renderscript$Sampler$Value()[I
    .locals 3

    .line 33
    sget-object v0, Landroidx/renderscript/SamplerThunker;->$SWITCH_TABLE$android$support$v8$renderscript$Sampler$Value:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroidx/renderscript/Sampler$Value;->values()[Landroidx/renderscript/Sampler$Value;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroidx/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroidx/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroidx/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroidx/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Landroidx/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroidx/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroidx/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v1}, Landroidx/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    sput-object v0, Landroidx/renderscript/SamplerThunker;->$SWITCH_TABLE$android$support$v8$renderscript$Sampler$Value:[I

    return-object v0
.end method

.method protected constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/Sampler;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method static convertValue(Landroidx/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;
    .locals 1

    .line 45
    invoke-static {}, Landroidx/renderscript/SamplerThunker;->$SWITCH_TABLE$android$support$v8$renderscript$Sampler$Value()[I

    move-result-object v0

    invoke-virtual {p0}, Landroidx/renderscript/Sampler$Value;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :pswitch_0
    sget-object p0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    return-object p0

    .line 57
    :pswitch_1
    sget-object p0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    return-object p0

    .line 55
    :pswitch_2
    sget-object p0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    return-object p0

    .line 53
    :pswitch_3
    sget-object p0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    return-object p0

    .line 51
    :pswitch_4
    sget-object p0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    return-object p0

    .line 49
    :pswitch_5
    sget-object p0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    return-object p0

    .line 47
    :pswitch_6
    sget-object p0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/renderscript/SamplerThunker;->mN:Landroid/renderscript/Sampler;

    return-object v0
.end method
