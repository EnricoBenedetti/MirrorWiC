from datasets import load_dataset


def main():
    n_sentences = 10000
    seed = 42


    dataset = load_dataset('bennexx/jp_sentences')
    df = dataset['train'].to_pandas()

    sampled_sentences = df.sample(n=n_sentences, random_state=seed)


    # write to file in train data folder of mirror_wic
    sampled_sentences['sentence'].to_csv('./train_data/ja_wiki.txt', index=False, header=False)

if __name__ == '__main__':
    main()