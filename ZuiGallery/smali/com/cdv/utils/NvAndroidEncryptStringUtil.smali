.class public Lcom/cdv/utils/NvAndroidEncryptStringUtil;
.super Ljava/lang/Object;
.source "NvAndroidEncryptStringUtil.java"


# static fields
.field public static final HW_ENCODE:Lcom/cdv/utils/NvAndroidEncryptStringUtil;

.field public static final OPLUS_ENCODE:Lcom/cdv/utils/NvAndroidEncryptStringUtil;

.field public static final OP_ENCODE:Lcom/cdv/utils/NvAndroidEncryptStringUtil;


# instance fields
.field private isBase64:Z

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;

    const/4 v1, 0x1

    const-string v2, "T1BQTw=="

    invoke-direct {v0, v1, v2}, Lcom/cdv/utils/NvAndroidEncryptStringUtil;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->OP_ENCODE:Lcom/cdv/utils/NvAndroidEncryptStringUtil;

    .line 26
    new-instance v0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;

    const-string v2, "T05FUExVUw=="

    invoke-direct {v0, v1, v2}, Lcom/cdv/utils/NvAndroidEncryptStringUtil;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->OPLUS_ENCODE:Lcom/cdv/utils/NvAndroidEncryptStringUtil;

    .line 30
    new-instance v0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;

    const-string v2, "SFVBV0VJ"

    invoke-direct {v0, v1, v2}, Lcom/cdv/utils/NvAndroidEncryptStringUtil;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->HW_ENCODE:Lcom/cdv/utils/NvAndroidEncryptStringUtil;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->isBase64:Z

    .line 40
    iput-object p2, p0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->value:Ljava/lang/String;

    return-void
.end method

.method public static equals(Ljava/lang/String;Lcom/cdv/utils/NvAndroidEncryptStringUtil;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 51
    iget-boolean v1, p1, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->isBase64:Z

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isBase64()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->isBase64:Z

    return v0
.end method

.method public setBase64(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->isBase64:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/cdv/utils/NvAndroidEncryptStringUtil;->value:Ljava/lang/String;

    return-void
.end method
