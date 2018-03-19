## AWS Lambda Structure

Boilerplate base to AWS Lambda without frameworks architecture.

```
.
├── .gitignore
├── package.json
├── package-lock.json
├── README.md
├── scripts
│   ├── awsConfig.sh
│   ├── awsDeploy.sh
│   ├── awsPublish.sh
│   ├── deploy.sh
│   ├── distClean.sh
│   ├── distCp.sh
│   └── distPack.sh
├── src
│   ├── dtos
│   │   └── UserList.ts
│   └── functions
│       ├── _environment
│       │   ├── .env.development
│       │   └── .env.production
│       ├── _helpers
│       │   ├── Db.ts
│       │   ├── package.json
│       │   ├── package-lock.json
│       │   └── ParseEventPayload.ts
│       └── users
│           ├── environment
│           │   ├── userList.development.json
│           │   └── userList.production.json
│           ├── package.json
│           ├── package-lock.json
│           ├── userList.spec.ts
│           └── userList.ts
└── tsconfig.json

```
## Deploy

```MODULE=users FUNCTION=userList npm run deploy```

## Author

[@erickwendel\_](https://twitter.com/erickwendel_)
